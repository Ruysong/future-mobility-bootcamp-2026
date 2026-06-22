# 온디바이스-AI 오프라인 실습: Tiny LLaMA

Tiny LLaMA를 중심으로 LLM 추론 구조, prefill/decode, KV cache, Transformer 구조, pruning, N:M sparsity, quantization을 다루는 오프라인 실습 개념 자료입니다.

## 자료

| 구분 | 파일 |
| --- | --- |
| 개념 PPT | [온디바이스AI_오프라인실습_Tiny_LLaMA.pptx](<교안/온디바이스AI_오프라인실습_Tiny_LLaMA.pptx>) |
| 목차 | [목차.md](<목차.md>) |
| 실습 시작 노트북 | [starter.ipynb](<notebooks/starter.ipynb>) |
| 실습 완료 노트북 | [completed.ipynb](<notebooks/completed.ipynb>) |
| 실습 메모 | [notes.md](<notes.md>) |

## 정리 방식

- `교안/`: 실습 개념 PPT 원본
- `목차.md`: 실습 개념 흐름과 키워드
- `notebooks/starter.ipynb`: 수업 실습 시작용 노트북
- `notebooks/completed.ipynb`: 실행 결과가 포함된 개인 실습 완료본
- 실행 결과나 성능표는 용량이 작은 것만 `outputs/`에 보관

## 실습 핵심

- LLM token generation 흐름 이해
- Training과 inference 차이 정리
- Prefill/decode와 KV cache 병목 이해
- TinyLlama 구조와 설정 확인
- Pruning, N:M sparsity, quantization을 온디바이스 관점에서 연결

## 노트북 구성

- Part 0. Setting
- Part 1. Pruning
  - Unstructured magnitude pruning
  - Structured pruning
  - N:M pruning
- Part 2. Quantization
  - Symmetric quantization
  - Asymmetric quantization
- Part 3. Combined Compression & Pareto
  - GPTQ & SparseGPT
  - Config 기반 압축 실험
  - Pareto frontier
  - 실험 데이터 관리
