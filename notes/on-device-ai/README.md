# 온디바이스 AI

온디바이스 환경에서 AI 모델을 효율적으로 실행하기 위한 모델 경량화, 양자화, 하드웨어 매핑 관련 교안 모음입니다.

## 교안 목록

| 번호 | 주제 | 원본 |
| --- | --- | --- |
| 00 | Intro | [PPTX](../../materials/on-device-ai/0.Intro.pptx) |
| 01 | Intro | [PPTX](../../materials/on-device-ai/1.%20Intro.pptx) |
| 02 | Pruning | [PPTX](../../materials/on-device-ai/2.%20Pruning.pptx) |
| 03 | Quantization | [PPTX](../../materials/on-device-ai/3.%20Quantization.pptx) |
| 04 | LLM | [PPTX](../../materials/on-device-ai/4.%20LLM.pptx) |
| 05 | KD, Knowledge Distillation | [PPTX](../../materials/on-device-ai/5.%20KD.pptx) |
| 06 | NAS, Neural Architecture Search | [PPTX](../../materials/on-device-ai/6.%20NAS.pptx) |
| 07 | Mapping | [PPTX](../../materials/on-device-ai/7.%20Mapping.pptx) |
| 08 | HW | [PPTX](../../materials/on-device-ai/8_HW.pptx) |
| 09 | IMC/ISC | [PPTX](../../materials/on-device-ai/9.%20IMC_ISC.pptx) |

## 핵심 개념

- [교안 자동 추출 텍스트](extracted-text/)
- 성능 지표: FLOPS, MAC, throughput, latency, power, memory footprint
- Roofline model: 연산 성능과 메모리 대역폭의 병목을 함께 보는 분석 도구
- Pruning: 중요도가 낮은 파라미터, 채널, 필터를 제거해 모델을 작게 만드는 기법
- Quantization: FP32 대신 INT8 등 낮은 정밀도로 표현해 메모리와 연산 비용을 줄이는 기법
- Knowledge Distillation: 큰 teacher 모델의 지식을 작은 student 모델에 전달하는 압축 방법
- NAS: 목표 하드웨어와 성능 제약에 맞는 모델 구조를 자동 탐색하는 접근
- Mapping/HW: 모델 연산을 실제 하드웨어 자원에 효율적으로 배치하는 문제

## 면접 질문 후보

- 온디바이스 AI에서 모델 경량화가 필요한 이유는?
- Structured pruning과 unstructured pruning의 차이는 무엇인가?
- PTQ와 QAT는 언제 각각 적합한가?
- Per-tensor quantization보다 per-channel quantization이 유리한 경우는?
- Roofline diagram으로 병목을 어떻게 해석할 수 있는가?

## 퀴즈

- [Quiz 1 정리](../../quizzes/on-device-ai/quiz-1.md)
- [Quiz 1 원본](../../quizzes/on-device-ai/raw-quiz-1.txt)
