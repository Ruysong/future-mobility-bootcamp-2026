# 온디바이스 AI Quiz 1

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

## 문제 1

초당 부동소수점 연산 수를 의미하는 연산 메트릭으로 옳은 것은?

- GEMM
- MAC
- FLOPS
- Throughput

정답: **FLOPS**

## 문제 2

Roofline diagram에 대한 설명으로 옳지 않은 것은?

- Operational intensity (OPs/Byte)는 DNN 모델의 계산량 대비 메모리 사용량의 비율을 의미한다.
- 측정된 모든 워크로드 포인트들은 roofline 위에 위치한다.
- 수평 roofline은 하드웨어 피크 성능 (OPs/s)을 의미한다.
- 대각선 roofline 기울기는 메모리 대역폭을 의미한다.

정답: **측정된 모든 워크로드 포인트들은 roofline 위에 위치한다.**

## 문제 3

Structured/Unstructured pruning에 대한 설명으로 옳지 않은 것은?

- Unstructured pruning은 불규칙적인 패턴으로 가중치를 제거한다.
- Structured pruning은 전체 채널이나 필터 단위로 제거하여 실제 행렬의 크기를 감소시킨다.
- Unstructured pruning을 사용하면 structured pruning과 비교하여 하드웨어 가속에서 이점이 크다.
- Unstructured pruning은 개별 가중치를 임의의 패턴으로 제거하여 더 높은 압축률을 달성할 수 있다.

정답: **Unstructured pruning을 사용하면 structured pruning과 비교하여 하드웨어 가속에서 이점이 크다.**

## 문제 4

N:M pruning에서 `2:4 sparsity`가 의미하는 것으로 옳은 것은?

- 2개의 레이어마다 4개 뉴런 제거
- 4개의 블록마다 2개 채널을 제거
- 25% sparsity
- 크기 4인 블록마다 2개의 원소를 제거

정답: **크기 4인 블록마다 2개의 원소를 제거**

## 문제 5

Magnitude-based pruning의 설명으로 옳지 않은 것은?

- 가중치의 절댓값을 기준으로 중요도를 판단한다.
- 가중치의 크기가 클수록 더 중요한 가중치로 간주한다.
- 가중치의 gradient 크기를 분석하여 학습에 기여하지 않는 가중치를 제거한다.
- 구현이 간단하고 직관적인 휴리스틱 기반의 방법이다.

정답: **가중치의 gradient 크기를 분석하여 학습에 기여하지 않는 가중치를 제거한다.**

## 문제 6

Pruning에서 L1/L2 regularization에 대한 설명으로 옳지 않은 것은?

- 신경망을 학습하거나 양자화된 신경망을 fine-tuning할 때 loss term에 추가된다.
- 0이 아닌 가중치에 패널티를 부여한다.
- 작은 가중치를 유도한다.
- Pruning 과정에서 제거된 가중치를 복원한다.

정답: **Pruning 과정에서 제거된 가중치를 복원한다.**

## 문제 7

Per-tensor/Per-channel quantization에 대한 설명으로 옳지 않은 것은?

- Per-tensor quantization은 전체 weight tensor에 대하여 단일 scale을 사용한다.
- Per-tensor quantization에서 outlier weight가 존재할 경우 값의 표현 범위가 넓어져 낮은 수준의 양자화 에러를 가진다.
- Per-channel quantization은 각 채널별로 서로 다른 scale을 사용한다.
- Per-channel quantization을 사용하면 per-tensor quantization과 비교하여 양자화 에러를 줄일 수 있다.

정답: **Per-tensor quantization에서 outlier weight가 존재할 경우 값의 표현 범위가 넓어져 낮은 수준의 양자화 에러를 가진다.**

## 문제 8

Quantization을 통해서 얻을 수 있는 하드웨어적 이점으로 옳지 않은 것은?

- Latency
- Dataset size
- Power consumption
- Memory usage

정답: **Dataset size**

## 문제 9

Non-linear quantization의 대표적인 방법은?

- K-means clustering
- Per-tensor quantization
- Random sampling
- Linear scaling

정답: **K-means clustering**

## 문제 10

Post-Training Quantization (PTQ)의 특징으로 옳은 것은?

- 학습 중에 quantization 적용
- 실시간 quantization
- 학습 완료 후 quantization 적용
- 동적 quantization

정답: **학습 완료 후 quantization 적용**
