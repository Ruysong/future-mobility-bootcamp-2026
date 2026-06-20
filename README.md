# 2026 Summer Future Mobility Bootcamp

방학 동안 수강하는 미래차 부트캠프 자료를 면접 대비용으로 정리하는 저장소입니다.

## 목적

- 교안 원본을 과목별로 보관합니다.
- 퀴즈와 풀이를 Markdown으로 정리합니다.
- 실습 코드, 실습 기록, 회고를 계속 추가합니다.
- 나중에 면접에서 설명할 수 있도록 핵심 개념과 경험을 한곳에 모읍니다.

## 구조

```text
materials/
  future-mobility-engineering/  # 미래차공학개론 PDF 교안 원본
  on-device-ai/                 # 온디바이스 AI PPTX 교안 원본
notes/
  future-mobility-engineering/  # 미래차공학개론 정리 노트
  on-device-ai/                 # 온디바이스 AI 정리 노트
quizzes/
  future-mobility-engineering/  # 미래차공학개론 퀴즈
  on-device-ai/                 # 온디바이스 AI 퀴즈
practice/                       # 오프라인 실습 코드와 실습 기록
scripts/                        # 자료 정리 보조 스크립트
```

## 현재 과목

- [미래차공학개론](notes/future-mobility-engineering/README.md)
- [온디바이스 AI](notes/on-device-ai/README.md)

## 업데이트 규칙

1. 새 교안은 `materials/<course>/`에 원본 그대로 추가합니다.
2. 퀴즈는 `quizzes/<course>/`에 `.md`로 정리하고 정답과 짧은 해설을 포함합니다.
3. 수업 노트는 `notes/<course>/`에 개념, 면접 질문, 실습 연결 포인트 중심으로 정리합니다.
4. 실습 코드는 `practice/` 아래에 날짜 또는 주제별 폴더로 분리합니다.

## 자동 추출 노트 갱신

PDF/PPTX 교안에서 검색용 Markdown을 다시 만들려면 다음을 실행합니다.

```powershell
python scripts/extract_material_text.py
```

생성 파일은 `notes/<course>/extracted-text/`에 저장됩니다. 자동 추출본은 검색과 빠른 복습용이며, 그림/표/레이아웃은 원본 교안을 확인합니다.

## 면접 대비 포인트

- 단순 암기보다 "왜 이 기술이 필요한가"를 먼저 정리합니다.
- 각 개념마다 적용 상황, 장점, 한계, 하드웨어/시스템 관점의 의미를 함께 적습니다.
- 실습 코드는 실행 방법, 결과, 배운 점, 개선 아이디어까지 남깁니다.
