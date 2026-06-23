# Quiz 3

온디바이스 AI Quiz 3 정리입니다. 문제와 정답을 함께 보관합니다.

## 정답 요약

| 번호 | 정답 |
| --- | --- |
| 1 | 연산 유닛과 가까울수록 메모리가 비싸고 희소하며, 데이터 지역성과 재사용을 극대화해야 하기 때문이다. |
| 2 | 한 번 읽은 데이터를 같은 PE가 시간적으로 여러 번 재사용 |
| 3 | 데이터 지역성을 높여 메모리 계층에 맞게 루프를 쪼개고, 계층별로 매핑하기 위함이다. |
| 4 | 가장 작은 타일 내부 연산을 병렬화하여 하드웨어 병렬성을 활용하며, 일반적으로 타일링이 선행된다. |
| 5 | 1 op/cycle |
| 6 | II는 파이프라인 지연(latency)과 항상 같다. |
| 7 | 가중치를 로컬에 고정하여 가중치 재사용을 극대화 |
| 8 | 가중치를 전하(charge)로 저장하고, 입력을 아날로그 전압으로 주입하여 메모리 주변/배열에서 곱셈을 수행한다. |
| 9 | 각 저장소자에 사실상 무한대의 정밀도를 저장 가능 |
| 10 | ADC/DAC가 완전히 불필요해져 변환 오버헤드가 사라짐 |

## 문제별 정리

### 문제 1. 메모리 계층이 존재하는 이유

정답: **연산 유닛과 가까울수록 메모리가 비싸고 희소하며, 데이터 지역성과 재사용을 극대화해야 하기 때문이다.**

가까운 메모리는 빠르고 에너지 비용이 낮지만 용량이 작고 비싸다. 따라서 locality와 reuse를 잘 활용해야 한다.

### 문제 2. Temporal reuse

정답: **한 번 읽은 데이터를 같은 PE가 시간적으로 여러 번 재사용**

Temporal reuse는 같은 processing element가 같은 데이터를 여러 cycle에 걸쳐 반복 사용하는 방식이다.

### 문제 3. Loop tiling의 목적

정답: **데이터 지역성을 높여 메모리 계층에 맞게 루프를 쪼개고, 계층별로 매핑하기 위함이다.**

큰 loop iteration space를 tile 단위로 쪼개면 cache/SRAM/register 같은 계층에 맞게 데이터를 재사용하기 쉬워진다.

### 문제 4. Vectorization

정답: **가장 작은 타일 내부 연산을 병렬화하여 하드웨어 병렬성을 활용하며, 일반적으로 타일링이 선행된다.**

Vectorization은 data-level parallelism을 활용해 작은 연산 단위를 병렬 처리하는 최적화다.

### 문제 5. Fully pipelined 설계의 throughput

정답: **1 op/cycle**

Fully pipelined 구조에서는 latency가 5 cycle이어도 pipeline이 포화된 뒤에는 매 cycle마다 하나의 결과를 낼 수 있다.

### 문제 6. Initiation Interval(II)에 대한 옳지 않은 설명

정답: **II는 파이프라인 지연(latency)과 항상 같다.**

II는 연속 iteration이 시작되는 cycle 간격이다. Latency와 같을 수도 있지만 항상 같은 값은 아니다.

### 문제 7. Weight-stationary dataflow

정답: **가중치를 로컬에 고정하여 가중치 재사용을 극대화**

Weight-stationary는 weight를 PE나 local buffer에 오래 머물게 해 weight movement를 줄이는 dataflow다.

### 문제 8. In-memory computing(IMC)의 기본 동작

정답: **가중치를 전하(charge)로 저장하고, 입력을 아날로그 전압으로 주입하여 메모리 주변/배열에서 곱셈을 수행한다.**

IMC는 memory array 또는 주변 회로에서 저장과 연산을 가깝게 결합해 data movement를 줄이는 접근이다.

### 문제 9. In-memory computing의 과제가 아닌 것

정답: **각 저장소자에 사실상 무한대의 정밀도를 저장 가능**

실제 IMC는 precision 제한, ADC/DAC 비용, analog non-ideality, scalability 문제가 있다.

### 문제 10. In-sensor/In-pixel computing의 효과로 적절하지 않은 것

정답: **ADC/DAC가 완전히 불필요해져 변환 오버헤드가 사라짐**

In-sensor/In-pixel computing은 sensor output data movement와 readout/ADC 에너지를 줄일 수 있지만, 모든 변환 오버헤드가 완전히 사라지는 것은 아니다.
