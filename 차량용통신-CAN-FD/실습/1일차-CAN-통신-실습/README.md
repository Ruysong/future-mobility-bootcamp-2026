# 1일차 CAN 통신 실습

2026년 6월 23일 차량용통신 CAN(FD) 오프라인 1일차 실습 자료입니다. `CAN자료.pdf` 130페이지를 기준으로 이론과 실습 흐름을 정리했고, Renesas RA6M3 보드 실습용 HEX/UI/workspace 파일을 함께 보관했습니다.

## 자료

| 구분 | 파일 | 설명 |
| --- | --- | --- |
| 실습 교안 | [CAN자료.pdf](<교안/CAN자료.pdf>) | 1일차 이론 및 실습 전체 흐름 |
| 원본 압축 | [Renesas_SummerCamp_CAN.zip](<원본압축/Renesas_SummerCamp_CAN.zip>) | 수업 제공 실습 파일 원본 압축본 |
| HEX 파일 | [ELF](<실습파일/ELF>) | Renesas Flash Programmer로 보드에 다운로드할 실습 프로그램 |
| 실습 UI | [UI](<실습파일/UI>) | PC에서 UART/CAN 실습 제어에 사용한 UI 실행 파일 |
| Flash workspace | [Workspace](<실습파일/Workspace>) | Renesas Flash Programmer 프로젝트 설정 |

## 실습 파일 역할

| 파일 | 역할 |
| --- | --- |
| `Renesas_SummerCamp_CAN_Ex0.hex` | 실습 1, CanKing 송수신 확인용 |
| `Renesas_SummerCamp_CAN_Ex1.hex` | 실습 2~5, PC-ECU/ECU-ECU 통신 및 ID filter 실습용 |
| `Renesas_SummerCamp_CAN_Ex2.hex` | 수업 제공 추가 실습 HEX 파일 |
| `Renesas_SummerCamp_CAN_UI.exe` | Serial UI로 CAN channel, baud rate, ID mask, ID acceptance, message를 설정 |
| `CAN.rpj`, `RA.fcf` | Renesas Flash Programmer에서 RA6M3 보드 플래싱에 사용하는 project/config 파일 |

## 공부한 개념

### ECU와 임베디드 시스템

- ECU는 Electronic Control Unit으로, 자동차 안에서 특정 기능을 담당하는 임베디드 모듈이다.
- ECU는 MCU, sensor, actuator, driver 등으로 구성된다.
- 차량에는 Headlight ECU, Body ECU처럼 기능별 ECU가 여러 개 존재한다.
- ADAS와 infotainment 같은 복합 기능이 늘면서 ECU 간 data traffic과 bandwidth 요구가 커진다.

### In-Vehicle Network와 CAN

- IVN은 차량 내부 ECU들이 통신하기 위한 네트워크다.
- 대표 프로토콜은 CAN, CAN FD, LIN, FlexRay, Ethernet이다.
- CAN은 Bosch가 개발한 Controller Area Network이며, 차량 내부 장치들이 공유 bus로 통신하는 표준 규격이다.
- CAN은 CAN-H/CAN-L 두 선을 사용하는 differential signaling 구조를 사용한다.
- 일반 실습 속도는 500 kbit/s, Classic CAN의 대표 최대 속도는 1 Mbps로 정리했다.

### CAN 물리 계층

- CAN-H와 CAN-L의 전압 차이로 bit를 표현한다.
- Recessive bit는 logical `1`, dominant bit는 logical `0`이다.
- Dominant `0`은 recessive `1`을 이긴다.
- UTP cable과 120 ohm termination resistor를 사용해 노이즈와 신호 반사를 줄인다.

### CAN 통신 방식

- CAN은 multi-master 방식이다.
- 여러 ECU가 동시에 송신하려 할 때 arbitration으로 우선순위를 결정한다.
- CAN ID가 낮을수록 우선순위가 높다.
- CSMA/CR 구조에서 carrier sense, multiple access, collision resolution 개념을 확인했다.
- Acceptance filter를 통해 원하는 ID의 메시지만 수신할 수 있다.

### CAN frame

- Classic CAN data frame은 SOF, arbitration field, control field, data field, CRC field, ACK field, EOF로 구성된다.
- Identifier는 표준 frame 기준 11 bit이다.
- DLC는 data length code이며, Classic CAN에서는 최대 8 byte data field를 사용한다.
- CAN FD는 Flexible Data Rate로, 최대 64 byte payload와 더 높은 data phase bit rate를 지원한다.

## 직접 수행한 실습

### 환경 설정

- RA6M3 Evaluation Toolkit을 사용했다.
- AC/DC adapter, servo motor, CAN cable, E2 Lite Debugger, UART 점퍼선을 순서대로 연결했다.
- Renesas Flash Programmer로 HEX 파일을 보드에 다운로드했다.
- CanKing에서 CAN channel을 `0 - Kvaser Leaf Light HS`로 설정하고 bus speed를 500 kbit/s로 맞췄다.
- 실습 UI에서 serial connection을 열고 channel, baud rate, ID mask, ID acceptance를 설정했다.

### 실습 1. CanKing 송수신 확인

- 사용 프로그램: `Renesas_SummerCamp_CAN_Ex0.hex`
- PC의 CanKing에서 CAN message를 생성해 RA6M3 보드로 송신했다.
- 예시로 ID `0x001`, data `12345678`을 전송했다.
- RA6M3 LCD에서 PC로부터 받은 CAN message와 ID를 확인했다.
- 반대로 RA6M3 UI에서 CAN ID와 message를 입력해 PC의 CanKing receive 창에서 수신 결과를 확인했다.

### 실습 2. PC-ECU 간 CAN 통신 구현

- 사용 프로그램: `Renesas_SummerCamp_CAN_Ex1.hex`
- PC와 RA6M3 ECU가 채팅 형태로 메시지를 주고받는 구조를 실습했다.
- PC에서 `Welcome!` 메시지를 송신하고 ECU가 수신하는 흐름을 확인했다.
- ECU에서 `Thankyou` 메시지를 송신하고 PC CanKing에서 ASCII/hex 수신 결과를 확인했다.

### 실습 3. ECU-ECU 1:1 통신

- 두 RA6M3 ECU를 CAN bus로 연결해 point-to-point 형태로 통신했다.
- 각 ECU에 CAN ID를 부여했다.
  - ECU 1: ID `01`
  - ECU 2: ID `02`
- 메시지로 상대 ECU의 LED와 servo motor를 제어하는 흐름을 확인했다.
- 예시 message:
  - `LD1100`
  - `SER150`
- 1:1 채팅 및 간단한 메시지 교환을 통해 ECU 간 CAN message 흐름을 확인했다.

### 실습 4. ECU-ECU multicast 통신

- 여러 명이 하나의 CAN bus 네트워크를 구성했다.
- 각 ECU에 서로 다른 CAN ID를 부여했다.
  - ECU 1: ID `1`
  - ECU 2: ID `2`
  - ...
  - ECU 20: ID `20`
- 각 ECU가 `ImECU1!`, `ImECU2!`처럼 자신의 ID 기반 메시지를 송신하고 bus 상에서 수신되는 흐름을 확인했다.
- 여러 ECU가 같은 bus를 공유할 때 ID 기반 송신/수신과 bus arbitration이 어떻게 연결되는지 실습했다.

### 실습 5. CAN ID filter

- Acceptance filter와 mask bit를 이용해 특정 ID 범위만 수신하도록 설정했다.
- 예시 필터:
  - 허용 ID 범위: `32~63`
  - ID mask: `1111 1100 000`
  - ID acceptance: `0000 0100 000`
- ID `41`, `42`는 수신되고, ID `71`, `72`, `73`, `74`는 수신되지 않는 결과를 확인했다.
- mask bit에서 `1`은 비교, `0`은 don't care로 동작한다는 점을 실습으로 확인했다.

## 팀 단위 문제 해결

### 개인 문제

조건:

- 다음 ID만 통과시키기:
  - `16, 18, 20, 22, 24, 26, 28, 30`
- mask bit에서 `0`의 개수는 3개.

정리:

- 허용 ID는 11-bit 기준으로 `0000001xxx0` 패턴이다.
- 따라서 acceptance는 `0000 0010 000` 형태로 잡고, 변동 가능한 3개 bit를 mask에서 don't care 처리한다.
- 교안 정답 기준:
  - Mask: `111 1111 0001`
  - Acceptance: `000 0001 XXX0`

### 팀 문제

- 5~6명이 차량 네트워크를 구성했다.
- ECU 1 -> ECU 2 -> ... -> ECU 5 -> ECU 1 순서로 메시지를 전달하는 ring 구조를 구성했다.
- 각 ECU는 바로 이전 ECU의 message만 받도록 acceptance filter를 설정했다.
- 예시 메시지 조합:
  - ECU1 ID `16`, message `Sungkyun`
  - ECU2 ID `18`, message `kwanUniv`
  - ECU3 ID `20`, message `Automati`
  - ECU4 ID `22`, message `oncanedu`
  - ECU5 ID `24`, message `cation!!`
- 메시지가 순서대로 전달되면 문장이 완성되도록 구성해 CAN ID filter와 multi-node 통신을 함께 확인했다.

## 면접에서 설명할 포인트

이 실습은 CAN을 단순히 이론으로만 본 것이 아니라, 실제 RA6M3 보드와 CanKing를 사용해 CAN frame 송수신, PC-ECU 통신, ECU-ECU 통신, multi-node bus 통신, acceptance filter를 직접 확인한 실습입니다. 특히 CAN ID가 arbitration 우선순위와 filtering 기준으로 동시에 쓰인다는 점, 그리고 mask/acceptance bit 설정으로 원하는 메시지만 수신하게 만들 수 있다는 점을 실습으로 연결했습니다.

## 로컬 환경 구축 자료

원본 로컬 폴더에는 Renesas Flash Programmer, CanKing, Wireshark, UART driver 설치 파일과 사용 방법 PDF가 함께 있습니다. 설치 패키지는 실행 파일과 대용량 zip이 많아 레포에는 넣지 않았고, 실습 재현에 필요한 핵심 실습 자료와 설정 파일만 보관했습니다.
