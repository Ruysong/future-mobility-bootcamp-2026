# 차량용 미들웨어

SOME/IP 기반 차량용 미들웨어 통신 실습 자료를 정리한 과목 폴더입니다. 이번 자료는 개념 설명보다 실습 절차와 패킷 확인이 중심이라, 원본 교안과 함께 바로 읽을 수 있는 실습 요약 MD를 같이 둡니다.

## 자료

| 구분 | 파일 | 내용 |
| --- | --- | --- |
| 목차 | [목차.md](<목차.md>) | 실습 전체 흐름과 핵심 키워드 |
| 원본 교안 | [단기강좌_SOMEIP_교육자료.pdf](<교안/단기강좌_SOMEIP_교육자료.pdf>) | 209페이지 SOME/IP 실습총자료 |
| 텍스트 정리 | [단기강좌_SOMEIP_교육자료.md](<텍스트/단기강좌_SOMEIP_교육자료.md>) | Wireshark 설정, PC-PC 실습, PC-Board 실습 정리 |

## 무엇을 했는가

이번 실습은 Wireshark로 SOME/IP와 SOME/IP-SD 패킷을 직접 확인하면서, PC-PC 통신과 PC-RA6M3 보드 통신을 순서대로 수행하는 구성입니다.

| 실습 | 통신 구조 | 핵심 내용 | 확인 포인트 |
| --- | --- | --- | --- |
| 1 | PC <-> PC | Request/Response | Request `0x00`, Response `0x80`, 사칙연산 payload |
| 2 | PC <-> PC | Fire&Forget | `REQUEST_NO_RETURN`, Lamp/Warning Sound 제어 |
| 3 | PC <-> PC | SD Events Pub/Sub | Offer -> Subscribe -> Subscribe ACK -> Event |
| 4 | PC <-> PC | SD Fields Pub/Sub | getter, setter, notifier 필드 동작 |
| 5 | PC <-> PC 다중 노드 | 2:N Pub/Sub | Video/Audio Service와 복수 Client 구독 |
| 6 | PC <-> RA6M3 Board | Request/Response | `Service ID 0x2000`, 보드 사칙연산 응답 |
| 7 | PC <-> RA6M3 Board | Fire&Forget | `Service ID 0x1000`, LED/Servo Motor 제어 |
| 8 | PC <-> RA6M3 Board | SOME/IP-TP | 큰 사진 데이터 TP 분할 전송 |
| 9 | RA6M3 Board -> PC | SD Events Pub/Sub | 보드 Offer, PC Subscribe, 전압/가변저항 Event |

## 핵심 개념

- SOME/IP는 Ethernet/IP 기반 차량 서비스 통신에서 서비스 ID, 메서드 ID, 메시지 타입, payload를 통해 요청/응답 또는 이벤트를 표현한다.
- SOME/IP-SD는 서비스 탐색과 구독을 담당하며, Offer, Subscribe, Subscribe ACK 흐름으로 Pub/Sub 관계를 만든다.
- Fire&Forget은 응답을 기다리지 않는 제어 메시지에 적합하며, 실습에서는 Lamp, Warning Sound, LED, Servo Motor 제어로 확인했다.
- SOME/IP-TP는 단일 SOME/IP payload로 다루기 큰 데이터를 분할 전송할 때 사용되며, 실습에서는 보드에서 PC로 사진 데이터를 전송했다.
- Wireshark에서는 `someip || someipsd` 필터, SOME/IP UDP 포트 등록, 색상 규칙, Packet Diagram을 사용해 프레임 구조를 확인했다.

## 면접에서 말하기 좋은 포인트

- 차량용 미들웨어 실습에서 SOME/IP의 Request/Response, Fire&Forget, Pub/Sub, TP 전송을 패킷 단위로 확인했다.
- 단순 GUI 조작이 아니라 Wireshark에서 Service ID, Method ID, Message Type, Payload가 어떻게 바뀌는지 추적했다.
- PC-PC 환경과 PC-Embedded Board 환경을 모두 다뤄 보며, Layer 2 MAC 설정부터 IP/Port 설정, 보드 초기 통신을 위한 Magic Cookie 흐름까지 확인했다.
- SOME/IP-SD의 Offer, Subscribe, Subscribe ACK, Event 흐름을 실제 서비스 구독 과정으로 이해했다.

## 폴더 구조

```text
차량용-미들웨어/
├── README.md
├── 목차.md
├── 교안/
│   └── 단기강좌_SOMEIP_교육자료.pdf
└── 텍스트/
    └── 단기강좌_SOMEIP_교육자료.md
```
