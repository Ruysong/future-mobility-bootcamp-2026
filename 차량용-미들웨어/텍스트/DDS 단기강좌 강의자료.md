# DDS 단기강좌 강의자료 텍스트 정리

원본: `교안/DDS 단기강좌 강의자료.pdf`  
분량: 170페이지  
주제: DDS 기반 차량용 미들웨어 실습, DDS 이론, Linux 실습 환경, Fast DDS 기반 Pub/Sub 실습

## 1. 전체 구성

자료는 이론과 실습으로 나뉜다.

- 이론: 차량 산업 변화, 미들웨어 개요, Data Distribution Service 개요
- 환경설정: Ubuntu, Wireshark, Ethernet IP 설정, 실습 자료 다운로드
- 실습: Basic Counter, Domain, Topic, Multi Topic, QoS Reliability, QoS History, QoS Ownership

DDS는 SOME/IP와 마찬가지로 차량용 미들웨어 후보 기술이지만, 서비스 호출 중심보다 데이터 중심 Publish/Subscribe 모델을 강조한다.

## 2. 차량 산업 변화와 미들웨어 필요성

### ECU와 차량 SW 증가

ECU는 자동차 내부에서 하나 이상의 기능을 수행하는 임베디드 시스템이다. Headlight ECU, Body ECU처럼 기능별 제어기가 존재하며, 최신 차량에서는 자율주행, ADAS, 인포테인먼트 기능 확장으로 ECU 수와 SW 복잡도가 증가한다.

### 차량 아키텍처 변화

- MCU 중심 구조에서 SoC, AP, GPU, 고성능 MCU 기반 구조로 확장
- CAN, LIN 중심 통신에서 CAN-FD, Ethernet, TSN 등 고속 통신으로 변화
- Connected Car, 전동화, ADAS 기능이 통합되면서 이기종 시스템 간 통신 필요 증가

### 미들웨어 역할

미들웨어는 OS와 애플리케이션 사이에서 동작하며, 애플리케이션 간 정보 교환을 쉽게 만든다.

- 서로 다른 시스템, 프로토콜, 데이터 형식 간 통신 지원
- 분산 네트워크 환경에서 여러 애플리케이션 간 데이터 교환 지원
- 네트워크 세부 구현을 몰라도 정보 교환 가능
- 개발 생산성, 시스템 호환성, 재사용성, 확장성 향상

차량 시스템에서는 애플리케이션, Linux/Android/RTOS/AUTOSAR, MCU/AP/SoC, CAN/LIN/Ethernet/Sensor/Actuator 사이에 DDS 또는 SOME/IP 같은 미들웨어가 위치한다.

## 3. DDS 개요

### Data Distribution Service

DDS는 Object Management Group(OMG)에서 개발한 미들웨어 프로토콜 및 API이다. 분산 시스템 안의 구성 요소 간 데이터 공유와 통신을 지원하며, 데이터 중심 Publish/Subscribe 방식으로 동작한다.

사용 분야 예시는 다음과 같다.

- Medical
- Industrial Automation
- Simulation
- Military

### Publish/Subscribe 패턴

Pub/Sub는 메시지를 주고받는 비동기식 통신 패턴이다.

| 구성요소 | 역할 |
| --- | --- |
| Publisher | 데이터를 생성하고 특정 Topic에 메시지를 발행 |
| Subscriber | 특정 Topic을 구독하고 해당 Topic의 메시지를 수신 |
| Topic | 데이터 유형과 논리적 채널 |
| Broker/Event Bus | MQTT 등에서 발행자와 구독자 사이를 중재하는 선택적 구성요소 |

MQTT는 중앙 Broker를 사용하지만, DDS는 Broker 없이 발행자와 구독자가 Peer-to-Peer로 통신한다. 논리적으로는 Topic을 통해 연결된다.

## 4. DDS Protocol Stack

DDS는 주로 IP 기반 네트워크에서 동작하며, 일반적으로 Ethernet 환경과 UDP/IP를 기반으로 사용된다.

```text
Application
DDS
TCP/UDP
IP
Ethernet MAC
Ethernet
```

DDS 내부는 크게 DCPS와 RTPS로 나눌 수 있다.

```text
Application
DCPS API
Data-Centric Publish-Subscribe (DCPS)
Real-Time Publish-Subscribe (RTPS)
DDS Interoperability Wire Protocol
TCP/UDP
```

## 5. DCPS 핵심 개념

DCPS는 DDS의 상위 계층이며 애플리케이션 개발자가 사용하는 DDS API를 제공한다. 데이터 중심 Pub/Sub 모델과 QoS 정책을 관리한다.

| 개념 | 설명 |
| --- | --- |
| Domain | 가상의 데이터 공간을 구분하는 논리적 네트워크 공간 |
| Topic | 네트워크에서 전송되는 데이터 유형과 이름 |
| Domain Participant | Domain에 속해 통신을 수행하는 엔티티, 하나의 노드에 해당 |
| DataWriter | Publisher가 전송할 데이터 Sample을 생성 |
| Publisher | DataWriter가 만든 데이터를 배포하는 엔티티 |
| DataReader | Subscriber로부터 특정 Topic 데이터를 수신하는 엔티티 |
| Subscriber | Publish된 데이터를 수신하고 DataReader가 사용할 수 있게 함 |

### Domain

Domain은 도메인 이름과 Domain ID로 식별되며, 서로 다른 Domain은 격리된다. 데이터를 교환하려면 동일 Domain 안에 있어야 한다.

### Topic

Topic은 Global Data Space 안의 정보 단위이다. Topic Name은 도메인 안에서 고유하게 식별되는 문자열이고, Topic Type은 데이터 구조를 정의한다.

### Publisher/Subscriber와 DataWriter/DataReader를 나누는 이유

- DataWriter/DataReader를 그룹화하고 관리하기 위함
- 공통 QoS 정책 적용
- 송신 방식과 수신 데이터 처리 방식 제어
- 역할 분리와 병렬 처리, 성능 향상

## 6. RTPS 핵심 개념

RTPS는 DDS의 하위 계층으로, DDS 메시지의 네트워크 전송을 담당한다. 서로 다른 DDS 구현체 간 상호운용성을 보장한다.

### RTPS 특징

- UDP/IP 기반 데이터 전송 지원
- 서로 다른 DDS 구현도 RTPS를 통해 통신 가능
- DCPS의 QoS 요구사항을 네트워크 전송 계층에서 구현
- Service Discovery로 DDS 노드를 발견하고 연결 설정

### RTPS 패킷

RTPS 패킷은 Header와 Message로 구성된다.

| 구성 | 내용 |
| --- | --- |
| RTPS Header | GUID prefix, Protocol version, Vendor ID 등 식별 정보 |
| RTPS Message | 실제 데이터와 관리용 Submessage |

Submessage 종류:

- `DATA(p)`: Domain Participant 관련 정보
- `DATA(w)`: DataWriter 관련 정보
- `DATA(r)`: DataReader 관련 정보
- `DATA`: 실제 애플리케이션 데이터
- `INFO`: 상태 관련 정보
- `HEARTBEAT`: 데이터 상태를 알리기 위해 주기적으로 전송
- `ACKNACK`: 수신 상태를 알리고 누락된 데이터 요청

## 7. 환경 설정

### Wireshark 설치와 실행

Ubuntu 환경에서 Wireshark를 설치하고 RTPS 패킷을 확인한다.

```bash
sudo apt install wireshark
sudo wireshark
```

설치 중 packet capture 권한 선택 화면에서는 `Yes`를 선택한다. Wireshark 실행 후 랜카드 인터페이스를 선택하고, 필터링 창에 `rtps`를 입력한다.

### Ethernet 연결과 IP 설정

노트북, 랜카드, Ethernet 케이블을 연결한 뒤 인터페이스 이름을 확인한다.

```bash
ifconfig
```

`ifconfig`가 없으면 다음을 설치한다.

```bash
sudo apt-get install net-tools
```

인터페이스 예시는 `enx00e04c36caa6` 형태이다. Netplan 설정 파일을 수정한다.

```bash
sudo nano /etc/netplan/01-network-manager-all.yaml
```

조원별 IP 예시:

- A: `10.0.0.10/24`
- B: `10.0.0.11/24`
- C: `10.0.0.12/24`

설정 후 적용한다.

```bash
sudo netplan apply
ip addr show enx00e04c36caa6
ifconfig
```

`inet` 항목이 `10.0.0.x/24`로 바뀌었는지 확인한다.

### 실습 자료 다운로드

```bash
git clone https://github.com/SKKU-AutomationLab-ECU/DDS_Practice
cd DDS_Practice
ls
```

## 8. 실습 0 - Basic Counter

### 목적

DDS 기본 예제로 Publisher가 Counter 메시지를 발행하고 Subscriber가 메시지를 수신하는 구조를 확인한다.

### IDL

IDL(Interface Description Language)은 Topic 데이터 타입을 정의하는 언어이다. OMG 표준 언어이며 문법은 C++과 유사하다.

예시에서 `TemSensorType`은 Topic Type이고, Topic Name은 애플리케이션 코드에서 작성한다.

### 실행 흐름

Subscriber:

```bash
mkdir build
cd build
cmake ..
make
./subscriber
```

Publisher는 `HelloWorldPublisher.cpp`, Subscriber는 `HelloWorldSubscriber.cpp`를 통해 동작을 확인한다. `fastddsgen HelloWorld.idl`로 IDL 기반 코드를 생성하는 흐름도 포함된다.

## 9. 실습 1 - Domain

### 개념

Domain은 Publisher와 Subscriber를 그룹화해 서로 통신할 수 있게 구성한 논리적 영역이다.

- 같은 Domain ID 안에서 Topic이 일치하면 통신 매칭
- Domain ID가 다르면 같은 네트워크와 같은 Topic이어도 데이터를 읽지 않음
- 물리 네트워크 하나 안에서 논리적으로 여러 시스템을 분리 가능

예시:

- Domain 0: 엔진 제어 시스템
- Domain 1: 인포테인먼트 시스템
- Domain 2: 진단 시스템

### 실습 실행

```bash
cd ../../
cd Ex1_Domain/
mkdir build
cd build
cmake ..
make
./subscriber 1
./publisher
```

Publisher는 1초마다 Counter를 갱신한다. Subscriber와 Publisher가 동일한 Domain ID에 있으면 수신되고, 다른 Domain ID에 있으면 수신되지 않는다.

## 10. 실습 2 - Topic

### 개념

DataWriter와 DataReader는 Topic을 통해 연결된다.

Topic 구성:

- Topic Name: 도메인 안에서 고유하게 식별되는 문자열
- Topic Type: Topic에 포함된 데이터 정의

Publisher와 Subscriber가 통신하려면 Topic 구성이 일치해야 한다. Topic이 일치하지 않으면 통신이 이루어지지 않는다.

### Key와 Instance

Topic Type 정의 안에서 하나 이상의 데이터 요소를 Key로 선택할 수 있다.

- Key는 같은 Topic의 여러 Instance 중 하나를 고유하게 식별한다.
- Key가 없는 Topic은 Instance가 하나만 존재한다.
- Instance는 하나의 Key에 해당하는 데이터 집합이다.
- Sample은 DCPS를 통해 전달되는 고유 값이다.

### Single Topic - Vehicle Diagnostics

Publisher는 차량 진단 데이터를 발행한다.

- rpm
- speed
- temp
- fuel
- voltage

Subscriber는 Publisher가 발행하는 정보를 구독한다.

실행:

```bash
cd ../../
cd Ex2_single_topic/
mkdir build
cd build
cmake ..
make
./vehicle_subscriber
./vehicle_publisher
```

Publisher는 4초마다 Topic을 갱신하고, 시작 후 랜덤 데이터를 전송한다. `manual` 입력 후 각 데이터를 직접 설정할 수 있다.

예시:

- `rpm 2000`: Subscriber에서 rpm 값 변경 확인
- `temp 100`: Subscriber에서 경고 문구 확인

## 11. 실습 3 - Multi Topic

### 목적

차량 시스템을 여러 Topic으로 나누어 구독/해지하는 구조를 확인한다.

Vehicle System 실습 Topic:

1. Powertrain
2. Chassis
3. Battery
4. ADAS

각 Topic은 여러 데이터 정보를 가진다.

### 실행

```bash
cd ../../
cd Ex3_multi_topic/
mkdir build
cd build
cmake ..
make
./vehicle_subscriber
./vehicle_publisher
```

Subscriber는 초기 설정에서 모든 Topic을 구독한다.

사용 명령:

- `status`: 현재 구독 중인 Topic 확인
- `unsubscribe battery`: Battery Topic 구독 취소
- `subscribe battery`: Battery Topic 재구독

Publisher는 4초마다 모든 Topic을 갱신하고, `manual` 입력 후 각 데이터를 직접 설정할 수 있다.

## 12. 실습 4 - QoS Reliability

### QoS 개념

QoS(Quality of Service)는 DDS 서비스 동작을 제어하는 특성의 집합이다.

- 네트워크 대역폭, 메모리 같은 리소스 사용 제어
- 지속성, 신뢰성, 적시성 같은 특성 제어
- Topic, DataReader/Writer, Publisher, Subscriber, DomainParticipant에 적용 가능
- 원활한 통신을 위해 QoS 호환 필요

예를 들어 `BEST_EFFORT` DataWriter는 `RELIABLE` QoS가 필요한 Topic 데이터를 송신할 수 없다.

### Reliability

Reliability는 메시지 전송 신뢰성을 제어한다.

| 모드 | 설명 |
| --- | --- |
| Reliable | 데이터 손실 시 발행자가 재전송해 수신 보장 |
| Best Effort | 수신 보장을 하지 않음 |

### 실습 실행

```bash
cd ../../
cd Ex4_reliability/
mkdir build
cd build
cmake ..
make
./reliability_subscriber
```

Publisher는 매 5번째 메시지를 critical 메시지로 설정한다. `p`를 입력해 메시지 전송을 pause/resume할 수 있다.

관찰 포인트:

- Pause 중 non-critical 메시지는 skip
- Critical 메시지는 queue에 저장
- Resume 시 queue에 저장된 critical 메시지를 먼저 전송
- Subscriber에서 missing sequences로 누락 여부 확인

예시에서는 3번째 메시지까지 받은 뒤 전송을 중지하고 재개하면, critical 메시지인 `#5`, `#10`은 재전송되지만 `#4`, `#6`, `#7`, `#8`, `#9`, `#11`, `#12`는 재전송되지 않는 흐름을 확인한다.

## 13. 실습 5 - QoS History

### 개념

History QoS는 발행자가 데이터를 발행한 후 Subscriber가 이를 어떻게 수신하고 처리할지 결정한다.

| 모드 | 설명 |
| --- | --- |
| KEEP_LAST | 설정된 수만큼 최신 데이터 Sample만 유지 |
| KEEP_ALL | 발행된 모든 데이터 Sample 유지 |

### 실습 실행

```bash
cd ../../
cd Ex5_history/
mkdir build
cd build
cmake ..
make
./history_subscriber
```

Subscriber에서 모드를 선택한다.

- `1`: KEEP_LAST, 5개 데이터만 저장
- `2`: KEEP_ALL, 예제에서는 최대 30개까지 표시

Publisher는 1초마다 차량 내부 온도, 습도, 기압 데이터를 발행한다. `2`를 입력해 Burst mode로 변경하면 1초에 10개 데이터를 발행한다.

## 14. 실습 6 - QoS Ownership

### 개념

Ownership QoS는 여러 Publisher가 동일한 Topic과 Key로 데이터를 발행할 때, Subscriber가 어떤 Publisher의 데이터를 사용할지 결정한다.

`EXCLUSIVE` 모드에서는 동일한 Key로 데이터를 발행할 경우 가장 높은 Ownership Strength를 가진 Publisher의 데이터만 Subscriber에게 전달된다.

### 실습 실행

```bash
cd ../../
cd Ex6_ownership/
mkdir build
cd build
cmake ..
make
./steering_subscriber
```

Subscriber에서는 `1`, `2`, `3`을 입력해 어떤 Publisher가 발행한 정보를 구독할지 설정한다.

Publisher는 3개가 존재한다.

| 실행 명령 | Ownership Strength | 의미 |
| --- | --- | --- |
| `./steering_publisher 1` | 10 | Manual Control |
| `./steering_publisher 2` | 20 | ADAS Control |
| `./steering_publisher 3` | 30 | Emergency Control |

Strength가 가장 높은 Emergency Control이 가장 우선권을 가진다.

## 15. 실습별 핵심 요약

| 실습 | 주제 | 핵심 확인 |
| --- | --- | --- |
| 0 | Basic Counter | IDL, fastddsgen, Publisher/Subscriber 기본 구조 |
| 1 | Domain | 같은 Domain ID에서만 통신 |
| 2 | Topic | Topic Name/Type/Key/Instance, Vehicle Diagnostics |
| 3 | Multi Topic | Powertrain, Chassis, Battery, ADAS 구독/해지 |
| 4 | Reliability QoS | Reliable vs Best Effort, critical message 재전송 |
| 5 | History QoS | KEEP_LAST vs KEEP_ALL, 저장 Sample 수 차이 |
| 6 | Ownership QoS | Ownership Strength에 따른 Publisher 우선순위 |

## 16. 면접에서 말하기 좋은 포인트

- DDS는 Broker 없이 Peer-to-Peer로 동작하는 데이터 중심 Pub/Sub 미들웨어이며, Topic을 중심으로 데이터 교환을 구성한다.
- DCPS는 애플리케이션 개발자가 사용하는 상위 API와 데이터 중심 모델을 제공하고, RTPS는 UDP/IP 기반 네트워크 전송과 상호운용성을 담당한다.
- Domain ID가 다르면 같은 Topic이라도 통신이 격리되므로, 하나의 물리 네트워크에서 논리 시스템을 분리할 수 있다.
- Topic은 Name과 Type이 모두 맞아야 매칭되며, Key를 사용하면 같은 Topic 안에서 Instance를 구분할 수 있다.
- QoS는 DDS의 핵심 차별점이다. Reliability, History, Ownership 같은 정책으로 신뢰성, 버퍼링, 다중 Publisher 우선순위를 제어할 수 있다.
- Wireshark에서 `rtps` 필터를 사용해 DDS 하위 전송 계층인 RTPS 패킷을 확인했다.
