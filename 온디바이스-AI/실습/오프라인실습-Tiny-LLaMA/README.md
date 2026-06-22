# 온디바이스-AI 오프라인 실습: Tiny LLaMA

Tiny LLaMA를 중심으로 LLM 추론 구조, prefill/decode, KV cache, Transformer 구조, pruning, N:M sparsity, quantization을 다루는 오프라인 실습 개념 자료입니다.

## 자료

| 구분 | 파일 |
| --- | --- |
| 개념 PPT | [온디바이스AI_오프라인실습_Tiny_LLaMA.pptx](<교안/온디바이스AI_오프라인실습_Tiny_LLaMA.pptx>) |
| 목차 | [목차.md](<목차.md>) |

## 정리 방식

- `교안/`: 실습 개념 PPT 원본
- `목차.md`: 실습 개념 흐름과 키워드
- 추후 Kaggle 또는 Colab 실습 노트북이 생기면 `notebooks/`에 `starter.ipynb`, `completed.ipynb` 형태로 추가
- 실행 결과나 성능표는 용량이 작은 것만 `outputs/`에 보관

## 실습 핵심

- LLM token generation 흐름 이해
- Training과 inference 차이 정리
- Prefill/decode와 KV cache 병목 이해
- TinyLlama 구조와 설정 확인
- Pruning, N:M sparsity, quantization을 온디바이스 관점에서 연결
