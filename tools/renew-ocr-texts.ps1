param(
  [string]$Root = (Get-Location).Path,
  [string]$WorkDir = "C:\Users\Public\Documents\ESTsoft\CreatorTemp\future-mobility-ocr",
  [string]$Python = "C:\Users\rruys\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
)

$ErrorActionPreference = "Stop"

Add-Type -AssemblyName System.Runtime.WindowsRuntime
$null = [Windows.Storage.StorageFile, Windows.Storage, ContentType=WindowsRuntime]
$null = [Windows.Graphics.Imaging.BitmapDecoder, Windows.Graphics.Imaging, ContentType=WindowsRuntime]
$null = [Windows.Media.Ocr.OcrEngine, Windows.Foundation, ContentType=WindowsRuntime]
$null = [Windows.Globalization.Language, Windows.Globalization, ContentType=WindowsRuntime]

function Await-WinRt {
  param(
    [Parameter(Mandatory = $true)] $AsyncOperation,
    [Parameter(Mandatory = $true)] [Type] $ResultType
  )

  $method = ([System.WindowsRuntimeSystemExtensions].GetMethods() |
    Where-Object { $_.Name -eq "AsTask" -and $_.GetParameters().Count -eq 1 -and $_.IsGenericMethod } |
    Select-Object -First 1).MakeGenericMethod($ResultType)
  $task = $method.Invoke($null, @($AsyncOperation))
  $task.Wait()
  return $task.Result
}

function Read-OcrText {
  param(
    [Parameter(Mandatory = $true)] [string] $ImagePath,
    [Parameter(Mandatory = $true)] $Engine
  )

  $file = Await-WinRt ([Windows.Storage.StorageFile]::GetFileFromPathAsync($ImagePath)) ([Windows.Storage.StorageFile])
  $stream = Await-WinRt ($file.OpenReadAsync()) ([Windows.Storage.Streams.IRandomAccessStreamWithContentType])
  $decoder = Await-WinRt ([Windows.Graphics.Imaging.BitmapDecoder]::CreateAsync($stream)) ([Windows.Graphics.Imaging.BitmapDecoder])
  $bitmap = Await-WinRt ($decoder.GetSoftwareBitmapAsync()) ([Windows.Graphics.Imaging.SoftwareBitmap])
  $result = Await-WinRt ($Engine.RecognizeAsync($bitmap)) ([Windows.Media.Ocr.OcrResult])

  $lines = New-Object System.Collections.Generic.List[string]
  foreach ($line in $result.Lines) {
    $words = @()
    foreach ($word in $line.Words) {
      if (-not [string]::IsNullOrWhiteSpace($word.Text)) {
        $words += $word.Text
      }
    }
    $text = ($words -join " ").Trim()
    if ($text.Length -gt 0) {
      $lines.Add($text)
    }
  }

  if ($lines.Count -eq 0 -and -not [string]::IsNullOrWhiteSpace($result.Text)) {
    $lines.Add($result.Text.Trim())
  }

  return ($lines -join "`n")
}

function Write-Markdown {
  param(
    [Parameter(Mandatory = $true)] [string] $OutPath,
    [Parameter(Mandatory = $true)] [string] $Title,
    [Parameter(Mandatory = $true)] [string] $SourceName,
    [Parameter(Mandatory = $true)] [string] $UnitLabel,
    [Parameter(Mandatory = $true)] [array] $Texts
  )

  $content = New-Object System.Collections.Generic.List[string]
  $content.Add("# $Title")
  $content.Add("")
  $content.Add("- 원본: [$SourceName](<../교안/$SourceName>)")
  $content.Add("- 생성 방식: 이미지 렌더링 후 Windows OCR(ko)")
  $content.Add("")

  for ($i = 0; $i -lt $Texts.Count; $i++) {
    $content.Add("## $UnitLabel $($i + 1)")
    $content.Add("")
    $text = [string]$Texts[$i]
    if ([string]::IsNullOrWhiteSpace($text)) {
      $content.Add("_OCR로 인식된 텍스트가 없습니다._")
    } else {
      foreach ($line in ($text -split "`n")) {
        $trimmed = $line.Trim()
        if ($trimmed.Length -gt 0) {
          $content.Add($trimmed)
        }
      }
    }
    $content.Add("")
  }

  [System.IO.File]::WriteAllText($OutPath, (($content -join "`n").TrimEnd() + "`n"), [System.Text.UTF8Encoding]::new($false))
}

function New-CleanDirectory {
  param([Parameter(Mandatory = $true)] [string] $Path)
  if (Test-Path -LiteralPath $Path) {
    Remove-Item -LiteralPath $Path -Recurse -Force
  }
  New-Item -ItemType Directory -Force -Path $Path | Out-Null
}

$renderScript = Join-Path $WorkDir "render_pdf_pages.py"
New-Item -ItemType Directory -Force -Path $WorkDir | Out-Null
[System.IO.File]::WriteAllText($renderScript, @'
from pathlib import Path
import sys
import pypdfium2 as pdfium

pdf_path = Path(sys.argv[1])
out_dir = Path(sys.argv[2])
scale = float(sys.argv[3])
out_dir.mkdir(parents=True, exist_ok=True)

pdf = pdfium.PdfDocument(str(pdf_path))
for index in range(len(pdf)):
    page = pdf[index]
    image = page.render(scale=scale).to_pil()
    image.save(out_dir / f"page-{index + 1:04d}.png")
print(len(pdf))
'@, [System.Text.UTF8Encoding]::new($false))

$language = [Windows.Globalization.Language]::new("ko")
$engine = [Windows.Media.Ocr.OcrEngine]::TryCreateFromLanguage($language)
if ($null -eq $engine) {
  throw "Windows Korean OCR engine is not available."
}

$rootPath = (Resolve-Path -LiteralPath $Root).Path
$courses = Get-ChildItem -LiteralPath $rootPath -Directory |
  Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "교안") }

foreach ($course in $courses) {
  $lectureDir = Join-Path $course.FullName "교안"
  $textDir = Join-Path $course.FullName "텍스트"
  New-Item -ItemType Directory -Force -Path $textDir | Out-Null
  Get-ChildItem -LiteralPath $textDir -Filter "*.md" -File -ErrorAction SilentlyContinue | Remove-Item -Force

  $materials = Get-ChildItem -LiteralPath $lectureDir -File |
    Where-Object { $_.Extension.ToLowerInvariant() -in @(".pdf", ".pptx") } |
    Sort-Object Name

  foreach ($material in $materials) {
    Write-Host "OCR: $($course.Name) / $($material.Name)"
    $safeName = [Guid]::NewGuid().ToString("N")
    $imageDir = Join-Path $WorkDir $safeName
    New-CleanDirectory $imageDir

    $unitLabel = "Page"
    if ($material.Extension.ToLowerInvariant() -eq ".pdf") {
      & $Python $renderScript $material.FullName $imageDir "2.75" | Out-Null
    } elseif ($material.Extension.ToLowerInvariant() -eq ".pptx") {
      $unitLabel = "Slide"
      $powerPoint = $null
      $presentation = $null
      try {
        $powerPoint = New-Object -ComObject PowerPoint.Application
        $presentation = $powerPoint.Presentations.Open($material.FullName, $true, $true, $false)
        foreach ($slide in $presentation.Slides) {
          $out = Join-Path $imageDir ("slide-{0:D4}.png" -f [int]$slide.SlideIndex)
          $slide.Export($out, "PNG", 1920, 1080) | Out-Null
        }
      } finally {
        if ($presentation) { $presentation.Close() | Out-Null }
        if ($powerPoint) { $powerPoint.Quit() | Out-Null }
      }
    }

    $texts = @()
    $images = Get-ChildItem -LiteralPath $imageDir -Filter "*.png" -File | Sort-Object Name
    foreach ($image in $images) {
      $texts += Read-OcrText -ImagePath $image.FullName -Engine $engine
    }

    $outPath = Join-Path $textDir ($material.BaseName + ".md")
    Write-Markdown -OutPath $outPath -Title $material.BaseName -SourceName $material.Name -UnitLabel $unitLabel -Texts $texts
  }
}
