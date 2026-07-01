# 2026 여름 미래차 부트캠프

방학 중 수강한 미래차 부트캠프 자료를 과목별로 정리한 저장소입니다. 교안 원본, 텍스트화한 강의 내용, 퀴즈와 답안, 오프라인 실습 자료를 함께 보관합니다.

## 과목

| 과목 | 목차 | 과목 폴더 | 퀴즈/실습 |
| --- | --- | --- | --- |
| 미래차공학개론 | [목차](<미래차공학개론/목차.md>) | [README](<미래차공학개론/README.md>) | [weekly quiz](<미래차공학개론/퀴즈/weekly-quiz.md>) |
| 온디바이스-AI | [목차](<온디바이스-AI/목차.md>) | [README](<온디바이스-AI/README.md>) | [퀴즈](<온디바이스-AI/퀴즈>) / [Tiny LLaMA 실습](<온디바이스-AI/실습/오프라인실습-Tiny-LLaMA/README.md>) |
| 차량용통신-CAN-FD | [목차](<차량용통신-CAN-FD/목차.md>) | [README](<차량용통신-CAN-FD/README.md>) | [CAN 실습](<차량용통신-CAN-FD/실습/README.md>) |
| 차량용-미들웨어 | [목차](<차량용-미들웨어/목차.md>) | [README](<차량용-미들웨어/README.md>) | [SOME/IP](<차량용-미들웨어/텍스트/단기강좌_SOMEIP_교육자료.md>) / [DDS](<차량용-미들웨어/텍스트/DDS 단기강좌 강의자료.md>) |
| 차량용-Ethernet | [목차](<차량용-Ethernet/목차.md>) | [README](<차량용-Ethernet/README.md>) | [1일차 실습자료](<차량용-Ethernet/텍스트/이더넷_강의자료.md>) |

## 저장소 구조

```text
.
├── README.md
├── 미래차공학개론/
│   ├── README.md
│   ├── 목차.md
│   ├── 교안/
│   │   ├── 01. Core Competency.pdf
│   │   ├── 02. 모빌리티로의 진화.pdf
│   │   ├── 03. Design.pdf
│   │   ├── 04. 모빌리티의 구성요소.pdf
│   │   ├── 05. Manufacturing (제조공정).pdf
│   │   ├── 06. 모빌리티 안전과 법규.pdf
│   │   ├── 07. 창의적 진화.pdf
│   │   ├── 08. 모빌리티산업과 시장의 생태계.pdf
│   │   ├── 09. 연결성(Connectivity).pdf
│   │   ├── 10. AAM과 도심항공교통.pdf
│   │   └── 11. 버티포트.pdf
│   ├── 텍스트/
│   │   └── 01~11 강의 텍스트 md
│   └── 퀴즈/
│       └── weekly-quiz.md
├── 온디바이스-AI/
│   ├── README.md
│   ├── 목차.md
│   ├── 교안/
│   │   ├── 0.Intro.pptx
│   │   ├── 1. Intro.pptx
│   │   ├── 2. Pruning.pptx
│   │   ├── 3. Quantization.pptx
│   │   ├── 4. LLM.pptx
│   │   ├── 5. KD.pptx
│   │   ├── 6. NAS.pptx
│   │   ├── 7. Mapping.pptx
│   │   ├── 8_HW.pptx
│   │   └── 9. IMC_ISC.pptx
│   ├── 텍스트/
│   │   └── 온디바이스 AI 강의 텍스트 md
│   ├── 퀴즈/
│   │   ├── quiz-1.md
│   │   ├── quiz-2.md
│   │   └── quiz-3.md
│   └── 실습/
│       └── 오프라인실습-Tiny-LLaMA/
│           ├── README.md
│           ├── 목차.md
│           ├── 교안/
│           │   └── 온디바이스AI_오프라인실습_Tiny_LLaMA.pptx
│           └── notebooks/
│               ├── starter.ipynb
│               └── completed.ipynb
├── 차량용통신-CAN-FD/
│   ├── README.md
│   ├── 목차.md
│   ├── 교안/
│   │   ├── Classic CAN.pdf
│   │   └── CAN FD (Flexible Data Rate).pdf
│   ├── 텍스트/
│   │   ├── Classic CAN.md
│   │   └── CAN FD (Flexible Data Rate).md
│   └── 실습/
│       ├── README.md
│       ├── 1일차-CAN-통신-실습/
│       │   ├── README.md
│       │   ├── 교안/
│       │   │   └── CAN자료.pdf
│       │   ├── 실습파일/
│       │   │   ├── ELF/
│       │   │   │   ├── Renesas_SummerCamp_CAN_Ex0.hex
│       │   │   │   ├── Renesas_SummerCamp_CAN_Ex1.hex
│       │   │   │   └── Renesas_SummerCamp_CAN_Ex2.hex
│       │   │   ├── UI/
│       │   │   │   └── Renesas_SummerCamp_CAN_UI.exe
│       │   │   └── Workspace/
│       │   │       └── CAN/
│       │   │           ├── CAN.rpj
│       │   │           └── RA.fcf
│       │   └── 원본압축/
│       │       └── Renesas_SummerCamp_CAN.zip
│       └── 2일차-CAN-FD-실습/
│           └── README.md
├── 차량용-미들웨어/
│   ├── README.md
│   ├── 목차.md
│   ├── 교안/
│   │   ├── 단기강좌_SOMEIP_교육자료.pdf
│   │   └── DDS 단기강좌 강의자료.pdf
│   └── 텍스트/
│       ├── 단기강좌_SOMEIP_교육자료.md
│       └── DDS 단기강좌 강의자료.md
└── 차량용-Ethernet/
    ├── README.md
    ├── 목차.md
    ├── 교안/
    │   └── 이더넷_강의자료.pdf
    └── 텍스트/
        └── 이더넷_강의자료.md
```

## 정리 원칙

- 교안 원본은 각 과목의 `교안/`에 보관합니다.
- 강의 내용을 텍스트로 읽기 쉽게 옮긴 문서는 `텍스트/`에 둡니다.
- 퀴즈는 문제와 정답을 함께 `퀴즈/`에 정리합니다.
- 실습은 각 과목의 `실습/` 아래에 일차/주제별로 분리합니다.
- 파일이나 폴더 구조가 바뀌면 이 루트 `README.md`의 저장소 구조도 함께 갱신합니다.
