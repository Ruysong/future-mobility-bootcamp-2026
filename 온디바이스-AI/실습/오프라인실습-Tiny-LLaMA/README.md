# 온디바이스-AI 오프라인 실습: Tiny LLaMA

TinyLlama를 대상으로 LLM 추론 구조와 모델 압축 기법을 직접 실습한 자료입니다. 단순히 노트북을 보관하는 용도가 아니라, 수업에서 제공된 시작 노트북을 기반으로 TODO를 채우고 실행 결과를 저장한 개인 실습 기록입니다.

## 자료

| 구분 | 파일 | 설명 |
| --- | --- | --- |
| 개념 PPT | [온디바이스AI_오프라인실습_Tiny_LLaMA.pptx](<교안/온디바이스AI_오프라인실습_Tiny_LLaMA.pptx>) | 실습 전 개념 설명 자료 |
| 목차 | [목차.md](<목차.md>) | LLM, TinyLlama, pruning, sparsity, quantization 개념 흐름 |
| 시작 노트북 | [starter.ipynb](<notebooks/starter.ipynb>) | 수업 제공 시작본, TODO와 실습 설명 포함 |
| 완료 노트북 | [completed.ipynb](<notebooks/completed.ipynb>) | TODO를 채우고 실행 결과를 저장한 개인 실습본 |

## 실습에서 한 일

- TinyLlama 기반 모델 압축 실습 환경을 구성했다.
- Unstructured magnitude pruning의 TODO를 채워 절대값이 작은 weight를 제거했다.
- Structured pruning에서 MLP intermediate neuron 중요도를 계산하고 `topk(..., largest=False)`로 제거 대상을 선택했다.
- N:M pruning의 개념을 확인하고 2:4 sparsity처럼 하드웨어 친화적인 희소 패턴을 학습했다.
- Channel-wise symmetric quantization의 정수 범위, scale, clamp/round, dequantization 과정을 구현했다.
- Channel-wise asymmetric quantization에서 min/max 기반 scale과 zero-point를 계산했다.
- Pruning과 quantization을 결합했을 때 정확도, 모델 크기, 추론 효율 사이의 trade-off를 확인했다.
- Pareto frontier 관점으로 압축 결과를 비교하는 흐름을 실습했다.

## 노트북 구성

| Part | 내용 | 실습 의미 |
| --- | --- | --- |
| Part 0. Setting | 환경 설정, 모델 로드 | TinyLlama 실습 준비 |
| Part 1. Pruning | Unstructured, structured, N:M pruning | weight 또는 구조를 제거해 연산량을 줄이는 방법 비교 |
| Part 2. Quantization | Symmetric, asymmetric quantization | 낮은 bit precision으로 메모리와 연산 비용 절감 |
| Part 3. Combined Compression & Pareto | GPTQ, SparseGPT, config 기반 실험, Pareto frontier | 여러 압축 기법의 효율/성능 균형 비교 |

## 채운 TODO 요약

| 영역 | 구현/확인한 내용 |
| --- | --- |
| Magnitude pruning | `torch.abs(weight)`로 중요도를 계산하고 threshold 이하 weight를 0으로 마스킹 |
| Structured pruning | gate/up projection의 평균 절대값으로 neuron 중요도 산정 후 낮은 중요도 neuron 제거 |
| Symmetric quantization | signed integer range, channel-wise scale, quantize/dequantize 구현 |
| Asymmetric quantization | unsigned integer range, min/max scale, zero-point 기반 복원 구현 |
| Thinking exercises | pruning/quantization이 실제 하드웨어 효율과 연결되는 이유를 답안으로 정리 |

## 실습 핵심 개념

- On-device LLM에서는 정확도뿐 아니라 latency, memory, model size, energy가 함께 중요하다.
- Unstructured pruning은 개별 weight를 제거하므로 sparsity는 만들기 쉽지만, 일반 하드웨어에서 속도 이득을 바로 얻기 어렵다.
- Structured pruning은 channel/neuron 단위로 구조를 줄이기 때문에 실제 배포와 가속에 더 유리하다.
- N:M sparsity는 일정한 패턴의 희소성을 만들어 GPU 같은 하드웨어가 활용하기 좋다.
- Quantization은 FP32/FP16 대신 INT 계열 표현을 사용해 모델 크기와 연산 비용을 줄인다.
- Symmetric quantization은 계산이 단순하고 빠르지만, 분포가 치우친 경우 표현 범위를 낭비할 수 있다.
- Asymmetric quantization은 zero-point를 사용해 범위를 더 잘 활용하지만 계산 오버헤드가 생길 수 있다.

## 면접에서 설명할 포인트

이 실습은 TinyLlama를 대상으로 pruning과 quantization을 직접 적용하며, 온디바이스 환경에서 모델 압축이 왜 필요한지 확인한 실습입니다. 시작 노트북의 TODO를 채워 unstructured pruning, structured pruning, channel-wise quantization을 구현했고, 완료 노트북에는 실행 결과가 저장되어 있습니다. 핵심은 모델을 작게 만드는 것만이 아니라, 실제 하드웨어에서 의미 있는 속도와 메모리 이득이 나도록 압축 방식의 구조적 특성을 이해하는 것입니다.
