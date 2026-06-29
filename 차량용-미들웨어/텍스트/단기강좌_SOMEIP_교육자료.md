# 단기강좌 SOME/IP 교육자료 텍스트 정리

원본: `교안/단기강좌_SOMEIP_교육자료.pdf`  
분량: 209페이지  
주제: 차량용 Middleware, SOME/IP 프로토콜 통신 실습 환경, SOME/IP 통신 제어 실습

## 1. 교육 구성

교육은 2026년 6월 29일 Automation Lab 자료를 기반으로 진행되며, 크게 두 파트로 구성된다.

- SOME/IP 프로토콜 통신 실습 환경 구축
- SOME/IP 통신 제어 실습

실습은 처음에는 PC와 PC를 Ethernet으로 연결해 프로토콜 흐름을 확인하고, 이후 RA6M3 Evaluation Toolkit을 사용해 PC와 Embedded Board 간 통신으로 확장한다.

## 2. Wireshark 실습 환경

Wireshark는 네트워크 패킷을 캡처하고 프로토콜 정보를 분석하는 도구로 사용한다. 실습에서는 SOME/IP와 SOME/IP-SD 패킷의 프레임 구조, 헤더 필드, payload를 직접 확인한다.

### 기본 설정

- Windows 검색에서 Wireshark 실행
- Ethernet Interface 선택
- PC의 MAC 주소 확인
- USB LAN 카드 사용 시 추가 Ethernet 인터페이스가 표시될 수 있음
- 이더넷 속성에서 `Npcap Packet Driver`가 보이지 않을 수도 있음

### SOME/IP 분석 설정

- `Edit -> Preferences -> Protocols -> SOME/IP`
- UDP 포트 번호 추가: `30490`, `30509-30513`
- Display Filter: `someip || someipsd`
- Coloring Rules에 `someip`, `someipsd` 등록
- Packet Diagram 활성화
- Packet Diagram에서 필요한 영역을 우클릭해 `Show Field Values` 사용

### Wireshark에서 볼 것

- 캡처된 패킷 목록
- 패킷 상세 구조
- 패킷 바이트
- 16진수 바이트 값과 ASCII 코드
- SOME/IP 헤더의 Service ID, Method ID, Message Type, Payload

## 3. 실습 전체 Outline

| 실습 | 주제 | 환경 |
| --- | --- | --- |
| 1 | Request/Response 통신 구현 | PC <-> PC |
| 2 | Fire&Forget 통신 구현 | PC <-> PC |
| 3 | SOME/IP-SD Publish/Subscribe - Events | PC <-> PC |
| 4 | SOME/IP-SD Publish/Subscribe - Fields | PC <-> PC |
| 5 | 2:N Pub/Sub 통신 구현 | PC <-> PC |
| 6 | Request/Response 통신 구현 | PC <-> Board |
| 7 | Fire&Forget 통신 구현 | PC <-> Board |
| 8 | SOME/IP TP 통신 구현 | PC <-> Board |
| 9 | SOME/IP-SD Publish/Subscribe - Events | PC <-> Board |

## 4. 실습 1 - Request/Response 통신 구현, PC-PC

### 목적

Client PC가 Server PC에 Request 메시지를 보내고, Server가 Response 메시지로 결과를 반환하는 기본 SOME/IP 통신을 확인한다.

### 사용 프로그램

- PC1 Client: `NGV_SOMEIP_Ex1_Client.exe`
- PC2 Server: `NGV_SOMEIP_Ex1_Server.exe`

### 절차

1. PC 두 대를 Ethernet 케이블로 연결한다.
2. 양쪽 GUI에서 Ethernet 인터페이스를 선택한다.
3. Source MAC, Destination MAC을 `XX:XX:XX:XX:XX:XX` 형식으로 입력한다.
4. Server GUI에서 Server Service Enable을 체크한다.
5. Client GUI에서 Input Value 1, 2를 입력하고 사칙연산 Method를 선택한다.
6. Send를 눌러 Request를 전송한다.
7. Server에서 수신 값을 확인하고 Client에서 Response 결과를 확인한다.
8. Wireshark에서 Request와 Response 프레임을 확인한다.

### 메시지 포인트

| 항목 | 값 |
| --- | --- |
| Service ID | `0x1234` |
| 더하기 Method ID | `0x0001` |
| 빼기 Method ID | `0x0002` |
| 곱하기 Method ID | `0x0003` |
| 나누기 Method ID | `0x0004` |
| Request Message Type | `0x00` |
| Response Message Type | `0x80` |

예시로 payload `0x14`, `0x17`은 20과 23을 의미하며, 더하기 Response payload `0x2b`는 43이다.

## 5. 실습 2 - Fire&Forget 통신 구현, PC-PC

### 목적

응답을 기다리지 않는 Request_No_Return 메시지를 사용해 Server의 Lamp 또는 Warning Sound 상태를 제어한다.

### 사용 프로그램

- PC1 Server: `NGV_SOMEIP_Ex2_Server.exe`
- PC2 Client: `NGV_SOMEIP_Ex2_Client.exe`

### 절차

1. Server와 Client의 Ethernet 인터페이스 및 MAC 주소를 설정한다.
2. Server에서 Lamp, Warning Sound 서비스를 체크한다.
3. Client에서 On/Off 버튼을 눌러 제어 메시지를 보낸다.
4. Server GUI에서 Lamp 색상 변화 또는 경고음 출력을 확인한다.
5. Wireshark에서 Request No Response 메시지를 확인한다.

### 메시지 포인트

- Lamp On: Method ID `0x0001`
- Lamp Off: Method ID `0x0002`
- Warning Sound: Service ID `0x2345`, Method ID `0x0001`
- Message Type: Request no response, Request_No_Return 계열

## 6. 실습 3 - SOME/IP-SD Publish/Subscribe Events, PC-PC

### 목적

SOME/IP-SD의 서비스 탐색과 이벤트 구독 흐름을 확인한다.

### 사용 프로그램

- PC1 Server: `NGV_SOMEIP_Ex3_Server.exe`
- PC2 Client: `NGV_SOMEIP_Ex3_Client.exe`

### 흐름

```text
Server -> Client: Offer
Client -> Server: Subscribe
Server -> Client: Subscribe ACK
Server -> Client: Event
```

### 실습 내용

- Server가 Offer Service를 주기적으로 송신한다.
- Client가 서비스를 구독한다.
- Wireshark에서 Offer -> Subscribe -> Subscribe ACK 시퀀스를 확인한다.
- Server에서 공기압, 유량 등 값을 입력하면 Client에서 이벤트 수신으로 값 변경을 확인한다.
- 공기압이 80 미만이면 Client GUI에서 경고 표시가 뜬다.

## 7. 실습 4 - SOME/IP-SD Publish/Subscribe Fields, PC-PC

### 목적

Events와 달리 Field 방식에서 getter, setter, notifier가 어떻게 동작하는지 확인한다.

### 사용 프로그램

- PC1 Server: `NGV_SOMEIP_Ex4_Server.exe`
- PC2 Client: `NGV_SOMEIP_Ex4_Client.exe`

### 흐름

```text
Server -> Client: Offer
Client -> Server: Subscribe
Server -> Client: Subscribe ACK
Client -> Server: Get Field
Server -> Client: Field
Client -> Server: Set Field
Server -> Client: Notification
```

### 메시지 포인트

| 기능 | Service ID | Method ID |
| --- | --- | --- |
| Getter | `0x0003` | `0x0001` |
| Setter | `0x0003` | `0x0002` |
| Notifier | `0x0003` | `0x8003` |

구독 전 GET/SET 동작과 구독 후 값 변화, Notification 발생 여부를 비교해 확인한다.

## 8. 실습 5 - 2:N Pub/Sub 통신 구현, PC-PC

### 목적

Switch를 통해 여러 PC를 연결하고, Video Service와 Audio Service를 여러 Client가 구독하는 구조를 확인한다.

### 사용 프로그램

- PC1 Video Service: `NGV_SOMEIP_Ex5_SD_Video.exe`
- PC2 Audio Service: `NGV_SOMEIP_Ex5_SD_Audio.exe`
- PC3 Client: `NGV_SOMEIP_Ex5_SD_Client.exe`
- PC4 Client: `NGV_SOMEIP_Ex5_SD_Client.exe`

### 실습 내용

- Video Service와 Audio Service가 SOME/IP-SD Offer 메시지를 멀티캐스트로 송신한다.
- 각 Client는 필요한 서비스를 선택해 Subscribe 메시지를 보낸다.
- Server는 Subscribe ACK를 반환한다.
- 구독 이후 Client가 Request를 보내면 영상 또는 오디오 서비스를 수신한다.
- Wireshark에서 Offer, Subscribe, Subscribe ACK, 이후 Request 흐름을 확인한다.

### 설정 포인트

- Client IP는 `192.168.0.XXX` 형식으로 설정한다.
- 자료 예시는 `13-40` 범위 사용을 안내한다.
- 각 PC의 Source MAC과 Ethernet 인터페이스를 정확히 맞춰야 한다.

## 9. RA6M3 Evaluation Toolkit

보드 실습은 RA6M3 Evaluation Toolkit을 사용한다.

### 키트 구성

- RENESAS RA6M3 보드
- E2 emulator Lite
- Power Cable
- Servo Motor
- MCU: RA6M3
- On Board Debugger
- Motor, LED, LCD, Switch

### 통신 구성

- Ethernet
- IVN: CAN 1ch, LIN 1ch
- Serial Communication
- Reset

### 보드 연결 주의

- Power Cable만 연결한 상태에서 Switch는 처음에 OFF로 유지한다.
- 모터를 보드에 연결한다.
- 프로그램 다운로드 후 E2 Lite Debugger 연결을 해제한다.
- 이후 Power Switch를 ON으로 바꾸고 Ethernet으로 PC와 보드를 연결한다.

## 10. PC-Board 공통 GUI 설정

PC-Board 실습은 통합 GUI `NGV_SOMEIP(PC-Board)_GUI.exe`를 사용한다.

### Layer 2 Setting

- PC의 Ethernet 인터페이스 선택
- PC Source MAC 입력
- SET 클릭으로 Data Link Layer 설정 완료

### Layer 3 & 4 Setting

- PC Source IP 설정
- Embedded Board Destination IP 설정
- PC Source Port 설정
- Embedded Board Destination Port 설정
- SET 클릭으로 Network/Transport Layer 설정 완료

### Test Message

보드는 처음에는 PC의 IP 주소를 모를 수 있으므로, PC에서 먼저 Test Message를 보내 통신을 시작한다. 자료에서는 이를 Magic Cookie 흐름으로 설명한다.

## 11. 실습 6 - Request/Response 통신 구현, PC-Board

### 목적

PC가 RA6M3 보드에 사칙연산 Request를 보내고, 보드가 계산 결과를 Response로 반환하는 과정을 확인한다.

### 사용 프로그램

- Board 프로그램: `NGV_RA6M3_SOMEIP.hex`
- PC GUI: `NGV_SOMEIP(PC-Board)_GUI.exe`

### 메시지 포인트

| 항목 | 값 |
| --- | --- |
| Service ID | `0x2000` |
| 덧셈 Method ID | `0x01` |
| 뺄셈 Method ID | `0x02` |
| 곱셈 Method ID | `0x03` |
| 나눗셈 몫 Method ID | `0x04` |
| 나눗셈 나머지 Method ID | `0x05` |
| Message Type | Request |

Input Value 1, 2는 `0-255` 범위에서 입력한다. 예시로 `10 + 5` Request에 대해 Response payload `15(0x0F)`를 확인했고, `255 * 255`에 대해 `65025(0xFE01)`을 확인했다.

## 12. 실습 7 - Fire&Forget 통신 구현, PC-Board

### 목적

PC에서 보드로 Request_No_Return 메시지를 보내 LED와 Servo Motor를 제어한다.

### 메시지 포인트

| 항목 | 값 |
| --- | --- |
| Service ID | `0x1000` |
| LED Method ID | `0x0001` |
| Servo Motor Method ID | `0x0002` |
| Message Type | `REQUEST_NO_RETURN(0x01)` |

### LED 제어

- Payload 범위: `0-15`
- 4개 LED를 `0b0000-0b1111` 비트 패턴으로 제어한다.
- `1`은 ON, `0`은 OFF를 의미한다.
- 예시 payload `0x0F(0b1111)`은 LED 4개를 모두 켠다.

### Servo Motor 제어

- Payload 범위: `0-180`
- 예시:
  - `0x00`: 0도
  - `0x5A`: 90도
  - `0xB4`: 180도

## 13. 실습 8 - SOME/IP TP 통신 구현, PC-Board

### 목적

SOME/IP-TP를 사용해 보드에서 PC로 사진 데이터를 전송한다. 일반 SOME/IP 메시지보다 큰 payload를 분할해 보내는 흐름을 확인하는 실습이다.

### 메시지 포인트

| 항목 | 값 |
| --- | --- |
| Service ID | `0x3000` |
| 개 Method ID | `0x01` |
| 고양이 Method ID | `0x02` |
| 토끼 Method ID | `0x03` |
| 기린 Method ID | `0x04` |
| Request Payload | 설정 없음 |
| Response Message Type | TP_RESPONSE |

PC가 원하는 사진의 Method ID로 Request를 보내면, 보드가 SOME/IP-TP 메시지로 사진 payload를 나누어 전송한다. Wireshark에서는 TP_RESPONSE와 총 payload 조립 결과를 확인한다.

## 14. 실습 9 - SOME/IP-SD Publish/Subscribe Events, PC-Board

### 목적

RA6M3 보드가 Server 역할을 하고 PC가 Client 역할을 하며, 보드의 센서/가변저항 관련 값을 이벤트로 구독한다.

### 사용 프로그램

- Board 프로그램: `NGV_RA6M3_SOMEIP.hex`
- PC Client: `Ex9_Client.exe`

### 흐름

```text
Board -> PC: Offer
PC -> Board: Subscribe
Board -> PC: Subscribe ACK
Board -> PC: Event
```

### 보드 설정

- SOME/IP-SD MODE ON: Offer 메시지 송신
- SOME/IP-SD MODE OFF: Offer 메시지 송신하지 않음

### 계산 개념

가변저항 출력 전압과 저항 값의 관계를 이용한다.

- `Ra + Rb = 10 kOhm`
- `Vp = Rb / (Ra + Rb) * 3.3 V * 1000`
- `Rb ~= Vp * 3.0303`
- `Ra = 10 kOhm - Rb`

### 확인 포인트

- Offer 메시지는 Embedded Board에서 PC로 전송된다.
- Destination IP는 멀티캐스트 주소로 표시된다.
- PC가 Subscribe 메시지를 보내고 보드가 Subscribe ACK를 반환한다.
- 이후 Event 메시지 payload로 `Vp`, `Ra`, `Rb` 값을 확인한다.
- PC GUI에서 현재 Embedded 보드의 출력 mV와 가변저항 값을 확인한다.

## 15. 실습 후 정리

실습 종료 후 키트는 다음 기준으로 정리한다.

- RENESAS 보드, 파워 케이블, Servo Motor, E2 emulator Lite는 가방에 넣는다.
- 랜카드와 Ethernet 케이블은 가방에 넣지 않고 따로 빼둔다.

## 16. 핵심 요약

- SOME/IP는 서비스 기반 차량 통신에서 Service ID, Method ID, Message Type, Payload로 동작을 구분한다.
- Request/Response는 요청과 응답이 한 쌍으로 연결되는 방식이다.
- Fire&Forget은 응답 없이 제어 명령을 전송하는 방식이다.
- SOME/IP-SD는 Offer, Subscribe, Subscribe ACK를 통해 서비스 탐색과 구독을 처리한다.
- Events는 서버가 값 변화나 주기 이벤트를 클라이언트에 전달하는 방식이다.
- Fields는 getter, setter, notifier를 통해 상태값 조회/변경/알림을 표현한다.
- SOME/IP-TP는 큰 데이터를 여러 TP 메시지로 나누어 전송한다.
- Wireshark 패킷 확인은 실습의 핵심이며, GUI 결과만 보는 것이 아니라 실제 헤더 필드와 payload까지 검증해야 한다.
