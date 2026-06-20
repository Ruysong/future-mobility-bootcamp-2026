from __future__ import annotations

import re
import zipfile
from pathlib import Path
from os.path import relpath
from xml.etree import ElementTree as ET

from pypdf import PdfReader


ROOT = Path(__file__).resolve().parents[1]


def natural_key(path: Path) -> list[object]:
    parts = re.split(r"(\d+)", path.name)
    return [int(part) if part.isdigit() else part.lower() for part in parts]


def clean_text(text: str) -> str:
    lines = [line.strip() for line in text.replace("\x00", "").splitlines()]
    compact: list[str] = []
    previous_blank = False
    for line in lines:
        if not line:
            if not previous_blank:
                compact.append("")
            previous_blank = True
            continue
        compact.append(line)
        previous_blank = False
    return "\n".join(compact).strip()


def rel_link(path: Path, from_dir: Path) -> str:
    return relpath(path, from_dir).replace("\\", "/")


def write_markdown(out_path: Path, title: str, source: Path, body: str) -> None:
    out_path.parent.mkdir(parents=True, exist_ok=True)
    source_link = rel_link(source, out_path.parent)
    content = (
        f"# {title}\n\n"
        f"- Source: [{source.name}](<{source_link}>)\n"
        "- Note: This file was auto-extracted for search and review. "
        "Check the original material for layout, figures, and tables.\n\n"
        f"{body.strip()}\n"
    )
    out_path.write_text(content, encoding="utf-8")


def extract_pdf(source: Path) -> str:
    reader = PdfReader(str(source))
    chunks: list[str] = []
    for index, page in enumerate(reader.pages, start=1):
        try:
            text = clean_text(page.extract_text() or "")
        except Exception as exc:
            text = f"[Text extraction failed: {exc}]"
        if text:
            chunks.append(f"## Page {index}\n\n{text}")
    return "\n\n".join(chunks) or "_No extractable text found._"


def slide_number(path: str) -> int:
    match = re.search(r"slide(\d+)\.xml$", path)
    return int(match.group(1)) if match else 0


def extract_pptx(source: Path) -> str:
    chunks: list[str] = []
    with zipfile.ZipFile(source) as archive:
        slide_names = sorted(
            [name for name in archive.namelist() if re.match(r"ppt/slides/slide\d+\.xml$", name)],
            key=slide_number,
        )
        for index, name in enumerate(slide_names, start=1):
            root = ET.fromstring(archive.read(name))
            texts = [node.text or "" for node in root.iter() if node.tag.endswith("}t")]
            text = clean_text("\n".join(texts))
            if text:
                chunks.append(f"## Slide {index}\n\n{text}")
    return "\n\n".join(chunks) or "_No extractable text found._"


def convert_course(material_dir: Path, output_dir: Path, suffix: str) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    for source in sorted(material_dir.glob(f"*{suffix}"), key=natural_key):
        out_path = output_dir / f"{source.stem}.md"
        if suffix == ".pdf":
            body = extract_pdf(source)
        elif suffix == ".pptx":
            body = extract_pptx(source)
        else:
            raise ValueError(f"Unsupported suffix: {suffix}")
        write_markdown(out_path, source.stem, source, body)
        print(out_path)


def main() -> int:
    convert_course(
        ROOT / "미래차공학개론" / "교안",
        ROOT / "미래차공학개론" / "노트" / "extracted-text",
        ".pdf",
    )
    convert_course(
        ROOT / "온디바이스-AI" / "교안",
        ROOT / "온디바이스-AI" / "노트" / "extracted-text",
        ".pptx",
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
