# 차량용 Ethernet

차량용 내부 통신 네트워크에서 Ethernet을 사용하는 배경과 RA6M3 보드 기반 Ethernet 실습을 정리한 과목 폴더입니다. 1일차 자료는 CAN/MOST 한계, Automotive Ethernet, Ethernet MAC/PHY, 프레임 구조, VLAN 기반 backbone switch 실습까지 이어집니다.

## 자료

| 구분 | 파일 | 내용 |
| --- | --- | --- |
| 목차 | [목차.md](<목차.md>) | 강의/실습 전체 흐름과 핵심 키워드 |
| 원본 교안 | [이더넷_강의자료.pdf](<교안/이더넷_강의자료.pdf>) | 152페이지 차량용 Ethernet 1일차 실습자료 |
| 텍스트 정리 | [이더넷_강의자료.md](<텍스트/이더넷_강의자료.md>) | 이론, Hardware Configuration, 실습 A1/A2/A3 정리 |

## 무엇을 했는가

| 구분 | 내용 | 확인 포인트 |
| --- | --- | --- |
| Background A | ECU, IVN, CAN/MOST 한계, Automotive Ethernet 도입 배경 | CAN payload/속도 한계, Ethernet backbone/TSN/보안 |
| Ethernet 이론 | OSI 7계층, MAC/PHY, MII/RMII, Ethernet frame | DA/SA, EtherType, Payload, FCS, Interframe Gap |
| Hardware Configuration | RA6M3 ETHERC/EDMAC, PHY chip, descriptor/buffer | MAC module, PHY management, DMA descriptor |
| Exercise A1 | RA6M3 <-> PC Raw Ethernet 송수신 | EtherType `0x0A01`, Wireshark, TFT-LCD |
| Exercise A2 | Ethernet-CAN Gateway | EtherType `0x0A02`, Ethernet payload를 CAN 8바이트 단위로 분할 |
| Background B | Unicast/Multicast/Broadcast, VLAN, Backbone | Multicast bit, IEEE 802.1Q, VLAN ID/PCP |
| Exercise A3 | VLAN Security / Backbone Switch | Non-VLAN/VLAN, Unicast/Multicast, LED/Servo 제어 |

## 핵심 개념

- Automotive Ethernet은 차량 내부의 고대역폭 통신 요구를 처리하기 위해 도입되며, 100BASE-T1, 1000BASE-T1, 10BASE-T1S, 2.5/5/10G-T1 같은 단일 pair 기반 규격을 포함한다.
- Ethernet frame은 Preamble, SFD, Destination MAC, Source MAC, Type/Length, Payload, FCS, Interframe Gap으로 구성된다.
- MAC 주소의 첫 octet 최하위 bit는 Individual/Group bit이며, `0`이면 unicast, `1`이면 multicast로 해석한다.
- RA6M3에서는 Ethernet MAC Controller(ETHERC), Ethernet DMA Controller(EDMAC), PHY chip이 함께 동작한다.
- VLAN(IEEE 802.1Q)은 data-link layer에서 broadcast domain을 논리적으로 분리하고, VLAN ID와 PCP를 통해 네트워크 분리와 우선순위 제어를 제공한다.
- 실습에서는 Wireshark로 Ethernet frame을 확인하고, RA6M3 TFT-LCD/LED/Servo Motor/CanKing으로 수신 결과를 검증했다.

## 면접에서 말하기 좋은 포인트

- CAN/MOST의 대역폭, payload, 확장성 한계를 차량용 Ethernet이 어떻게 보완하는지 설명할 수 있다.
- OSI 7계층 관점에서 Ethernet은 Data-Link/MAC과 Physical/PHY 계층을 담당하고, 상위 계층의 IP/TCP/UDP payload를 encapsulation한다.
- RA6M3 보드에서 MAC/PHY/EDMAC descriptor와 buffer 구조를 통해 Ethernet frame 송수신 흐름을 실습했다.
- Ethernet-to-CAN gateway 실습에서 Ethernet payload가 CAN data field 8바이트 단위로 분할되는 이유를 확인했다.
- VLAN 실습에서 unicast와 multicast가 switch MAC table 및 VLAN membership에 따라 어떤 포트로 전달되는지 직접 검증했다.

## 폴더 구조

```text
차량용-Ethernet/
├── README.md
├── 목차.md
├── 교안/
│   └── 이더넷_강의자료.pdf
└── 텍스트/
    └── 이더넷_강의자료.md
```
