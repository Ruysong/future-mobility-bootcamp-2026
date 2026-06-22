# Tiny LLaMA 실습 메모

## 파일 역할

| 파일 | 역할 |
| --- | --- |
| `notebooks/starter.ipynb` | 수업에서 제공된 시작 노트북 |
| `notebooks/completed.ipynb` | 실행 결과가 저장된 개인 실습 완료본 |
| `교안/온디바이스AI_오프라인실습_Tiny_LLaMA.pptx` | 실습 개념 설명 PPT |
| `목차.md` | 실습 개념 목차와 키워드 |

## 실습 흐름

1. TinyLlama 기반 모델 압축 실습 환경을 설정한다.
2. Unstructured pruning, structured pruning, N:M pruning을 비교한다.
3. Symmetric quantization과 asymmetric quantization의 차이를 확인한다.
4. GPTQ, SparseGPT, config 기반 압축 실험을 통해 정확도와 효율의 trade-off를 본다.
5. Pareto frontier 관점에서 압축 결과를 정리한다.

## 면접에서 설명할 포인트

- 온디바이스 환경에서는 정확도뿐 아니라 latency, memory, model size, energy 관점이 중요하다.
- Pruning은 불필요한 weight나 구조를 제거해 연산량을 줄이는 접근이다.
- Quantization은 수 표현 precision을 낮춰 메모리와 연산 비용을 줄이는 접근이다.
- Completed notebook은 실제 실행 결과가 포함된 개인 실습본이다.
