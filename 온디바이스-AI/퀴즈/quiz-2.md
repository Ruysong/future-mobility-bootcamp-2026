# Quiz 2

온디바이스 AI Quiz 2 정리입니다. 문제와 정답을 함께 보관합니다.

## 정답 요약

| 번호 | 정답 |
| --- | --- |
| 1 | teacher 모델의 확률 분포(소프트 타겟)를 student 모델이 모방하면 더 잘 학습된다. |
| 2 | T가 커질수록 분포가 부드러워져 dark knowledge가 더 드러난다. |
| 3 | Data augmentation pipeline |
| 4 | 탐색 공간에서 목적 함수를 최대화하는 최적 아키텍처를 찾는다. |
| 5 | learning rate |
| 6 | K-means 클러스터링으로 아키텍처 직접 선택 |
| 7 | 이전 토큰들의 K, V를 저장해 어텐션 연산을 빠르게 하기 위해 |
| 8 | 출력 길이(생성해야 할 토큰 수) |
| 9 | LLM에서 activation outlier의 양자화가 어렵기 때문이 난도를 weight로 이전하기 위해 |
| 10 | 쿼리는 N개 헤드, 키/밸류는 1개 헤드를 사용한다. |

## 문제별 정리

### 문제 1. Knowledge Distillation(KD)의 핵심 가정

정답: **teacher 모델의 확률 분포(소프트 타겟)를 student 모델이 모방하면 더 잘 학습된다.**

KD는 teacher의 soft target에 담긴 class 간 상대적 확률 정보를 student가 학습하도록 하는 방법이다.

### 문제 2. Softmax temperature

정답: **T가 커질수록 분포가 부드러워져 dark knowledge가 더 드러난다.**

Temperature가 커지면 softmax 분포가 완만해지고, 정답 class 외 class들 사이의 관계 정보가 더 잘 드러난다.

### 문제 3. KD에서 "what to match"에 포함되지 않는 것

정답: **Data augmentation pipeline**

KD에서 주로 match하는 대상은 output logits, prediction probabilities, intermediate feature, attention map 등이다. Data augmentation pipeline은 학습 데이터 처리 방식이지 teacher와 student 사이에서 직접 match하는 target은 아니다.

주의: sparsity pattern도 일반적인 KD matching target은 아니지만, 보기 중 가장 명확하게 "what to match"의 대상이 아닌 것은 data augmentation pipeline으로 정리했다.

### 문제 4. Neural Architecture Search(NAS)의 목표

정답: **탐색 공간에서 목적 함수를 최대화하는 최적 아키텍처를 찾는다.**

NAS는 search space 안에서 accuracy, latency, efficiency 등 objective를 만족하는 architecture를 자동 탐색한다.

### 문제 5. 네트워크 수준 NAS 탐색 차원이 아닌 것

정답: **learning rate**

Network-level search space는 depth, width, resolution, kernel size 같은 architecture 차원을 다룬다. Learning rate는 architecture 차원보다는 training hyperparameter에 가깝다.

### 문제 6. NAS 탐색 전략이 아닌 것

정답: **K-means 클러스터링으로 아키텍처 직접 선택**

NAS 탐색 전략에는 grid search, random search, reinforcement learning, gradient-based search, evolutionary search 등이 있다.

### 문제 7. LLM decoding에서 KV cache를 쓰는 이유

정답: **이전 토큰들의 K, V를 저장해 어텐션 연산을 빠르게 하기 위해**

Autoregressive decoding에서는 매 토큰마다 이전 context를 참조한다. KV cache는 이전 token의 key/value를 재계산하지 않도록 저장한다.

### 문제 8. LLM serving latency에 큰 영향을 주는 요소

정답: **출력 길이(생성해야 할 토큰 수)**

LLM은 token-by-token으로 출력하므로 생성해야 할 token 수가 늘어나면 decode 단계 반복 횟수가 늘어난다.

### 문제 9. SmoothQuant가 등장한 이유

정답: **LLM에서 activation outlier의 양자화가 어렵기 때문이 난도를 weight로 이전하기 위해**

SmoothQuant는 activation outlier 때문에 activation quantization이 어려운 문제를 완화하기 위해 activation 쪽 난도를 weight 쪽으로 이동시키는 접근이다.

### 문제 10. Multi-Query Attention(MQA)의 특징

정답: **쿼리는 N개 헤드, 키/밸류는 1개 헤드를 사용한다.**

MQA는 query heads는 여러 개 유지하면서 key/value head를 공유해 KV cache 메모리 사용량을 줄인다.
