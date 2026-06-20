# 온디바이스 AI Quiz 1

- 풀이일: 2026-06-20
- 범위: 성능 지표, Roofline model, pruning, quantization
- 원본: [raw-quiz-1.txt](raw-quiz-1.txt)

## 정답표

| 번호 | 정답 |
| --- | --- |
| 1 | FLOPS |
| 2 | 측정된 모든 워크로드 포인트들은 roofline 위에 위치한다. |
| 3 | Unstructured pruning을 사용하면 structured pruning과 비교하여 하드웨어 가속에서 이점이 크다. |
| 4 | 크기 4인 블록마다 2개의 원소를 제거 |
| 5 | 가중치의 gradient 크기를 분석하여 학습에 기여하지 않는 가중치를 제거한다. |
| 6 | Pruning 과정에서 제거된 가중치를 복원한다. |
| 7 | Per-tensor quantization에서 outlier weight가 존재할 경우 값의 표현 범위가 넓어져 낮은 수준의 양자화 에러를 가진다. |
| 8 | Dataset size |
| 9 | K-means clustering |
| 10 | 학습 완료 후 quantization 적용 |

## 1. 초당 부동소수점 연산 수를 의미하는 연산 메트릭으로 옳은 것은?

선택지:

- GEMM
- MAC
- FLOPS
- Throughput

정답: **FLOPS**

해설: FLOPS는 Floating Point Operations Per Second의 약자로, 초당 수행 가능한 부동소수점 연산 수를 의미한다. GEMM은 행렬곱 연산 형태, MAC은 multiply-accumulate 연산, throughput은 단위 시간당 처리량을 더 넓게 말하는 지표다.

## 2. Roofline diagram에 대한 설명으로 옳지 않은 것은?

선택지:

- Operational intensity (OPs/Byte)는 DNN 모델의 계산량 대비 메모리 사용량의 비율을 의미한다.
- 측정된 모든 워크로드 포인트들은 roofline 위에 위치한다.
- 수평 roofline은 하드웨어 피크 성능 (OPs/s)을 의미한다.
- 대각선 roofline 기울기는 메모리 대역폭을 의미한다.

정답: **측정된 모든 워크로드 포인트들은 roofline 위에 위치한다.**

해설: Roofline은 해당 하드웨어에서 달성 가능한 성능의 상한을 나타낸다. 실제 워크로드 포인트는 보통 roofline 아래 또는 경계에 위치한다.

## 3. Structured/Unstructured pruning에 대한 설명으로 옳지 않은 것은?

선택지:

- Unstructured pruning은 불규칙적인 패턴으로 가중치를 제거한다.
- Structured pruning은 전체 채널이나 필터 단위로 제거하여 실제 행렬의 크기를 감소시킨다.
- Unstructured pruning을 사용하면 structured pruning과 비교하여 하드웨어 가속에서 이점이 크다.
- Unstructured pruning은 개별 가중치를 임의의 패턴으로 제거하여 더 높은 압축률을 달성할 수 있다.

정답: **Unstructured pruning을 사용하면 structured pruning과 비교하여 하드웨어 가속에서 이점이 크다.**

해설: Unstructured pruning은 압축률을 높일 수 있지만 sparsity 패턴이 불규칙해 일반 하드웨어에서 가속 이점이 작을 수 있다. Structured pruning은 채널/필터 단위로 제거되어 실제 연산 크기 감소와 하드웨어 효율 측면에서 유리하다.

## 4. N:M pruning에서 `2:4 sparsity`가 의미하는 것으로 옳은 것은?

선택지:

- 2개의 레이어마다 4개 뉴런 제거
- 4개의 블록마다 2개 채널을 제거
- 25% sparsity
- 크기 4인 블록마다 2개의 원소를 제거

정답: **크기 4인 블록마다 2개의 원소를 제거**

해설: 2:4 sparsity는 4개 원소 묶음 안에서 2개만 남기거나 2개를 제거하는 구조적 sparsity 패턴을 뜻한다. 전체적으로는 50% sparsity가 된다.

## 5. Magnitude-based pruning의 설명으로 옳지 않은 것은?

선택지:

- 가중치의 절댓값을 기준으로 중요도를 판단한다.
- 가중치의 크기가 클수록 더 중요한 가중치로 간주한다.
- 가중치의 gradient 크기를 분석하여 학습에 기여하지 않는 가중치를 제거한다.
- 구현이 간단하고 직관적인 휴리스틱 기반의 방법이다.

정답: **가중치의 gradient 크기를 분석하여 학습에 기여하지 않는 가중치를 제거한다.**

해설: Magnitude-based pruning은 가중치의 절댓값 크기를 기준으로 중요도를 판단한다. Gradient 기반 분석은 별도의 중요도 측정 방식에 가깝다.

## 6. Pruning에서 L1/L2 regularization에 대한 설명으로 옳지 않은 것은?

선택지:

- 신경망을 학습하거나 양자화된 신경망을 fine-tuning할 때 loss term에 추가된다.
- 0이 아닌 가중치에 패널티를 부여한다.
- 작은 가중치를 유도한다.
- Pruning 과정에서 제거된 가중치를 복원한다.

정답: **Pruning 과정에서 제거된 가중치를 복원한다.**

해설: L1/L2 regularization은 가중치 크기에 패널티를 주어 작은 가중치를 유도한다. 제거된 가중치를 복원하는 기능은 아니다.

## 7. Per-tensor/Per-channel quantization에 대한 설명으로 옳지 않은 것은?

선택지:

- Per-tensor quantization은 전체 weight tensor에 대하여 단일 scale을 사용한다.
- Per-tensor quantization에서 outlier weight가 존재할 경우 값의 표현 범위가 넓어져 낮은 수준의 양자화 에러를 가진다.
- Per-channel quantization은 각 채널별로 서로 다른 scale을 사용한다.
- Per-channel quantization을 사용하면 per-tensor quantization과 비교하여 양자화 에러를 줄일 수 있다.

정답: **Per-tensor quantization에서 outlier weight가 존재할 경우 값의 표현 범위가 넓어져 낮은 수준의 양자화 에러를 가진다.**

해설: Per-tensor quantization은 하나의 scale을 전체 tensor에 적용한다. Outlier가 있으면 표현 범위가 넓어져 작은 값들의 해상도가 떨어지고 양자화 에러가 커질 수 있다.

## 8. Quantization을 통해서 얻을 수 있는 하드웨어적 이점으로 옳지 않은 것은?

선택지:

- Latency
- Dataset size
- Power consumption
- Memory usage

정답: **Dataset size**

해설: Quantization은 모델의 연산과 저장 비용을 줄여 latency, power consumption, memory usage 개선에 도움이 된다. Dataset size는 학습 데이터 크기이므로 직접적인 하드웨어 이점이 아니다.

## 9. Non-linear quantization의 대표적인 방법은?

선택지:

- K-means clustering
- Per-tensor quantization
- Random sampling
- Linear scaling

정답: **K-means clustering**

해설: K-means clustering은 값을 균일 간격이 아니라 cluster center로 대표하게 하므로 non-linear quantization의 대표 예시로 볼 수 있다.

## 10. Post-Training Quantization (PTQ)의 특징으로 옳은 것은?

선택지:

- 학습 중에 quantization 적용
- 실시간 quantization
- 학습 완료 후 quantization 적용
- 동적 quantization

정답: **학습 완료 후 quantization 적용**

해설: PTQ는 이미 학습된 모델에 후처리로 quantization을 적용하는 방식이다. 학습 과정에서 quantization을 반영하는 방식은 QAT에 가깝다.

## 면접 대비 한 줄 정리

- Roofline은 연산량과 메모리 대역폭 중 무엇이 병목인지 보는 도구다.
- Structured pruning은 실제 하드웨어 가속과 연결되기 쉽고, unstructured pruning은 압축률은 좋지만 sparse 연산 지원이 중요하다.
- Quantization은 모델 크기, 메모리 사용량, 전력, 지연시간을 줄이는 데 유리하지만 outlier와 scale 선택이 정확도에 영향을 준다.
- PTQ는 적용이 간단하고 빠르지만 정확도 손실이 있을 수 있고, QAT는 학습 비용이 더 들지만 정확도 보존에 유리하다.
