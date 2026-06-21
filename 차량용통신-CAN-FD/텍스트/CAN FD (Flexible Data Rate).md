# CAN FD (Flexible Data Rate)

- 원본: [CAN FD (Flexible Data Rate).pdf](<../교안/CAN FD (Flexible Data Rate).pdf>)
- 생성 방식: 이미지 렌더링 후 Windows OCR(ko)

## Page 1

원관대및
CAN with Flexible Data-Rate
[CAN FD)
전 재 욱
Embedded System 연구실
성균관대학교
Embedded System Lab

## Page 2

OutIine
원관대및
lntroduction CAN FD
CAN FD Frames
CAN FD Bit Requirements
Transceiver Delay Compensation
Ringing Suppression Technology
Embedded System Lab

## Page 3

원관대및
COMPARISON OF AUTOMOTIVE
NETWORKS
Embedded System Lab

## Page 4

Automotive Communication System
원관대및
0
Sensors & Embedded
Control
10G
IG
100M
10M
IM
100k
I
10k
2015-16
2014-15: IEEE RTPGE
2012: BroadR-Reach
FlexRay
Multi Media / Driver Assistance
Seamless upgrade path
Ethernet Technology
APIX
MOST
150
I
AN F
CAN
PSI
DSI
LIN
eam eSS upgra e pa
CAN -Technology
lmplementation costs per node
Embedded System Lab

## Page 5

원관대및
Automotive Communication System
Peripheral Sensor lnterface (PSI)
TO interface for automotive sensor applications
Distributed System lnterface (DSI)
To interface sensors and actuators to ECU
Local lnterconnect Network (LIN)
TO interface sensors and actuators to ECU
Embedded System Lab

## Page 6

원관대및
Automotive Communication System
RTPGE
Reduced Twisted Pair Gigabit Ethernet
One Pair EtherNet (OPEN)
IOOBASE-TI
100 Mbps Ethernet with tW0 wires
Broadcom: BroadR-Reach
1 Gbps Ethernet with two wires
IOOOBASE-TI
Marvell
Embedded System Lab

## Page 7

원관대및
Automotive Communication System
Automotive PlXel link (APIX)
tO transmit control signals and image data
Media Oriented System Transportation (MOST 150)
A high-speed multimedia network technology
150 Mbps
Embedded System Lab

## Page 8

원관대및
ISSUE OF CAN
Embedded System Lab

## Page 9

원관대및
lntrinsic ProbabiIistic ASDect Of CAN
Event triggered system
CAN messages are ordered hierarchically using ID values
The only truly 'deterministic' message
ID = ( 000 0000 0000 )2
> its latency time = 'one CAN frame' - one bit + IFS (3 bits)
The other messages
Probabilistic because of arbitration
Dependent transmission and its asso. latency time
If we want tO be sure Of communicating at a given instant,
i.e. tO be temporally deterministic,
CAN cannot
Embedded System Lab

## Page 10

원관대및
FLERAY
-10-
Embedded System Lab

## Page 11

NecessitY for A New Comm ProtocOI
원관대및
CAN network limitation
The CAN network has reached its performance limits (IMbps).
A faster 한OtOC이 is required.
Real•time communication
Higher reliability and data rate are required.
EIectricaI control alternative tO hydraulic control
Application Of X-by-Wire tO powertrain and safety systems
iS considered.
-11-
Embedded System Lab

## Page 12

FlexRay
원관대및
Time Triggered ProtocoI (TTP) of max 10 Mbps
for X•by•Wire
-12-
Embedded System Lab

## Page 13

FlexRay
원관대및
High•reIiabIe communication protocol for X•by•Wire
Redundant communication
" enables fully-duplicated network configuration
lt enables schedule monitoring by hardware.
ECU
MCU
FlexRay
ECU
MCU
FlexRay
ECU
MCU
FlexRay
Transceiver
-13-
Transce•ver
Transceiver
Transce•ver
Transceiver
Transce•ver
Embedded System Lab

## Page 14

FlexRay
원관대및
SUPport 0f flexible topology
can support various types Of topologies
bus, star, mixed
combination Of the static segment and the dynamic segment
-14-
Embedded System Lab

## Page 15

FlexRay
원관대및
BMW )(5 (2006)
Used in chassis control system
EIectronic damper control
17 `
-15-
- Embedded System Lab

## Page 16

FlexRay
원관대및
BMW 7 Series (2008)
FuIIy implement FlexRay
" AII 0f the driving systems are linked
15 ECUs on the FIexRay bus
The first electronic stability program (ESP)
featuring a FIexRay data bus interface
-16-
Embedded System Lab

## Page 17

FlexRay
원관대및
Time-triggered communication not flexible enough
-17-
4
Embedded System Lab

## Page 18

FlexRay
원관대및
Truck architectures 0f a long life span
twice the life span Of a passenger car architecture
have tO be extendable for new features or regulations
FlexRay requires
a complete predefinition Of the communication schedule
a difficult and ineffective jOb with regard tO future extensions
-18-
Embedded System Lab

## Page 19

FlexRay
원관대및
A broad diversity 0f different vehicles and markets
light trucks, heavy trucks, omnibuses, special-purpose vehicles
Europe, North America, South America, Asia
Reuse the core of the electronic architecture
for vehicles and markets and tO adopt it tO the respective needs.
Building one common communication schedule of FlexRay
ChaIIenging
Building \/ehicle-dependent communication schedules
More complicated
-19-
Embedded System Lab

## Page 20

원관대및
CAN-FD
-20-
Embedded System Lab

## Page 21

Automotive Communication System
원관대및
0
-21-
Sensors & Embedded
Control
10G
2015-16
2014-15: IEEE RTPGE
IG
2012: BroadR-Reach
Multi Media / Driver Assistance
Seamless upgrade path
Ethernet Technology
APIX
MOST
150
100M
10M
AN F
IM
CAN
100k
PSI
DSI
10k
LIN
FlexRay
eam eSS upgra e pa
CAN -Technology
lmplementation costs per node
Embedded System Lab

## Page 22

원관대및
BOSCh lntroduces CAN-FD 합0t0001
at lnternational CAN Conference
April 17, 2012
Bosch and Vector demonstrated a 70 Mbps CAN-FD network
prototype
using off-the-she/f transceiver ch1PS compliant with 60 7 7898-2.
This CAN-FD supports larger payloads.
2 Up t0 64 byte in a single data-frame.
1!수•뚀1|혈孝
03”
페i구晸
1 1빠드되
FPGA
000
000
1,7疊
50-
40-
19
00|30-
;FPGA 1i0
20-
: 0000 00이10-
13
nP1øo .
03 그 1 e 矽11 ;
§0 04•300f
FBL
" 1 여OO ` 새• ㆍ
onfiq
7퉄조•
Embedded System Lab

## Page 23

Motivation Of CAN FD
원관대및
Time-triggered communication not flexible enough
CAN FD
Flexible
후
후
4
후
Embedded System Lab

## Page 24

Motivation Of CAN FD
원관대및
Truck architectures 0f a long life span
twice the life span Of a passenger car architecture
have tO be extendable for new features or regulations
CAN FD
Flexible
4
Embedded System Lab

## Page 25

Motivation Of CAN FD
원관대및
A broad diversity 0f different vehicles and markets
light trucks, heavy trucks, omnibuses, special-purpose vehicles
Europe, North America, South America, Asia
Flexible CAN or CAN FD
4
Embedded System Lab

## Page 26

Motivation Of CAN FD
원관대및
High effort for migration t0 FIexRay
Hardware costs
Software changes
Close gap btw CAN (max 1 Mbps) and FIexRay (10 Mbps)
lncreasing BVV in automotive communication
-26-
Embedded System Lab

## Page 27

원관대및
Evolution
CAN Node
Host
CAN Controller
CAN Transceiver
CANH
CANL
-27-
From CAN tO CAN FD
븨二 弓目및:•
CAN FD Node
HOSt
CAN FD C
CAN Transceiver
CAN Node
Host
CAN Controller
CAN Transceiver
CAN FD Node
Host
CAN FD C
CAN Transceiver
CANL
CAN Node
Host
CAN Controller
CAN Transceiver
CAN FD Node
Host
CAN FD C
CAN Transceiver
Embedded System Lab

## Page 28

원관대및
From CAN tO CAN FD
Mixture of classic CAN and CAN FD nodes
Communicate only with classic CAN messages
CAN Node
Host
CAN Controller
CAN TransceIver
CAN FD Node
Host
CAN FD Controller
CAN Transceiver
CANH
CANL
CAN Node
Host
CAN Controller
CAN Transceiver
Embedded System Lab

## Page 29

원관대및
-29-
From CAN tO CAN FD
Mixture of classic CAN and CAN FD nodes
Switch off the classic CAN nodes and
only interact with CAN FD nodes
CAN Node
Host
CAN Controller
CAN Transceiver
CAN FD Node
Host
CAN FD Controller
CAN Transceiver
CANH
CANL
CAN Node
Host
CAN Controller
CAN Transceiver
Embedded System Lab

## Page 30

From CAN tO CAN FD
원관대및
AII nodes are CAN FD capable
Legacy SWC (application level SW of ECU, 8 date bytes)
" Only change 0f system software (e.g. MCAL)
Higher speed FD data rate can be used
CAN FD Node
二쪅국二
CAN FD ControIIer
CAN TransceIver
CANH
CANL
-30-
CAN FD Node
〔二견춓=
CAN FD Controller
CAN Transceiver
CAN FD Node
二辱二긭
CAN FD ControlIer
CAN Transceiver
Embedded System Lab

## Page 31

From CAN tO CAN FD
원관대및
AII nodes are CAN FD capable
New SWC (more than 8 date bytes)
" Every ECU SW (application & system level SW) must be changed.
Higher speed FD data rate with Longer data size can be used
CAN FD Node
二쪅국二
CAN FD ControIIer
CAN TransceIver
CANH
CANL
-31-
CAN FD Node
〔二견춓=
CAN FD Controller
CAN Transceiver
CAN FD Node
二辱二긭
CAN FD ControlIer
CAN Transceiver
Embedded System Lab

## Page 32

Same as CAN
원관대및
Same in CAN and CAN FD
arbitration
acknowledgement mechanism
Embedded System Lab

## Page 33

Difference from CAN
원관대및
Switch tO higher bit rate for transmission Of
Data Length Code
Data Field
Frame CRC
Data fields with more than 8 bytes possible
configured by unused DLC codes “1001 ” to “1 1 1 1
12, 16, 20, 24, 32, 48, 64 bytes
New CRC polynomials for longer data fields, HD=6
17 bit (CRC-17)
up t0 16 byte data fields
21bit (CRC-21)
up t0 64 byte data fields
Embedded System Lab

## Page 34

Use Case Of CAN FD
원관대및
Fast SW download
Standard data rate - 500 kbps
Time tO transmit 4 standard CAN message
with 8 data bytes and 15% stuff bits
999.6 ps
FD data rate - 2 Mbps
• Time t0 transmit 1 CAN FD message
with 32 data bytes and 15% stuff bits
223 ps
Replacement 0f local CAN
Avoid splitting 0f long messages
Higher BW
Embedded System Lab

## Page 35

원관대및
Standard CAN
Frame
CAN FD
Frame
CAN FD
Frame
CAN FD
Arbitration
Phase
PayIoad transmitted at higher bit rate
Arbitration
Phase
Arbitration
Phase
Arbitration
Phase
Arbitration
Phase
lmplications 0f higher bit rate
Changes limited t0 HW 0f 한otoc이 controller
Transceivers for higher data rate qualified
Legacy SW fully compatible
up 따 64 Bytes payload in Data Phase (instead Of 8 Byte)
Arbitration
Phase
lmplication 0f larger payload
SW update necessary
Embedded System Lab

## Page 36

원관대및
-36-
Frame Formats
CAN standard (or base) format
11 bit long identifier and constant bit rate
CAN extended format
29 bit long identifier and constant bit rate
CAN FD standard (or base) format
11 bit long identifier and dual bit rate
CAN FD extended format
29 bit long identifier and dual bit rate
Embedded System Lab

## Page 37

Standard Formats in CAN & CAN-FD
원관대및
0
0
D D
E L
-37-
ARBITRATION FIELD
CONTROL FIELD
BASE IDENTIFIER T D
R E
ARBITRATION FIELD
I
BASE IDENTIFIER 1
ARBITRATION PHASE
CONTROL FIELD
E
B E
R S DLC
S I
DATA PHASE
Embedded System Lab

## Page 38

Extended Formats in CAN & CAN-FD
원관대및
0
ARBITRATION FIELD
S I
BASE IDENTIFIER R D IDENTIFIER EXTENSION
R E
ARBITRATION FIELD
S I
0
BASE IDENTIFIER R D IDENTIFIER EXTENSION 1
R E
ARBITRATION PHASE
CONTROL FIELD
CONTROL FIELD
E B E
D 6 R S DLC
DATA PHASE
Embedded System Lab

## Page 39

Frame TYDes
원관대및
Data frame
in CAN standard format
in CAN extended format
in CAN FD standard format
in CAN FD extended format
Remote frame
in CAN standard format
in CAN extended format
None in CAN FD format
Error & Overload frames
-39-
Embedded System Lab

## Page 40

원관대및
-40-
CAN FD Standard Frame
Max bit rate
Arbitration phase:l Mbps
Data phase > 1 Mbps
Arbitration Phase
Arbitration field
base ID
CO
Data Phase (if BRS recessive)
rbitration Phase
trol field
DLC
Data fieldl)
CRC field
0
MSB (first bit transmitted)
0
tuff Count CRC se uence
C C
21bitsor 4
0 0 N ” 0
17 bits
1) No data field if DLC=O
0
0
0
0
Embedded System Lab

## Page 41

원관대및
Arbitration Phase
Arbitration field..
base ID
LL
CAN FD Standard Frame
Data Phase (if BRS recessive)
Arbitration Phase
…Cantrol field
DLC
0 0)
Data fieldl)
CRC field
tuff Count CRC se uence 으 石
C C
0 “ = °兮 21bits or
0
MSB (first bit tranä•mk$ed)
No data field if DLC=O
17 bits
LSB
-41-
「1, 「0: reserved bits
Transmitted dominant, reserved for future 한OtOC이 variants
Receivers accept dominant and recessive bitS in all combinations
Embedded System Lab

## Page 42

원관대및
Arbitration Phase
CAN FD Standard Frame
Data Phase (if BRS recessive)
Arbitration field .
base ID
Control field
DLC
0 로 0)
Data fieldl)
CRC field
LL
Arbitration Phase
으 石
tuff Count CRC se uence
C C
0 “ = °兮 21bits or
17 bits
MSB (first bit transm;tted)
No data field if DLC=O
IDE: ldentifier extension flag
IDE = “0” (dominant) = false
NO identifier extension
> standard frame llbit identifier
IDE = 1' (recessive) = true
ldentifier extension
> Extended frame 29 bit identifier
LSB
Embedded System Lab

## Page 43

원관대및
Arbitration Phase
CAN FD Standard Frame
Data Phase (if BRS recessive)
Arbitration Phase
Arbitration field
base ID
…Control field
DLC
Data fieldl)
CRC field
LL
tuff Count CRC se uence 으 石
C C
0 “ = °兮 21bits or
MSB (first bit transmitt<d)
No data field if DLC=O
17 bits
LSB
EDL: Extended Data Length
EDL = “1” (recessive) = true
• CAN FD frame format (new DLC-coding and CRC)
EDL = “0" (dominant) = false
classic CAN frame format
FDF (FD Format)
Embedded System Lab

## Page 44

원관대및
Arbitration Phase
CAN FD Standard Frame
Data Phase (if BRS recessive)
LL
Arbitration field
base ID
C 0.t℃| field
DLC
Data fieldl)
C C
CRC field
tuff Count CRC se uence
= °兮 21bits or
17 bits
Arbitration Phase
으 石
0
MSB (first bit transmitted)
BRS: Bit Rate Switch
BRS = “1” (recessive)
No data field if DLC=O
= true
Switch to alternate bit rate
BRS = “0" (dominant) = false
DO not switch bit rate
LSB
Embedded System Lab

## Page 45

원관대및
Arbitration Phase
Arbitration field
base ID
OO
CAN FD Standard Frame
Data Phase (if BRS recessive)
Arbitration Phase
ContrQl field
DLC
0
Data fieldl)
CRC field
tuff Count CRC se uence
C C
0 4) “ = °兮 21bits or
0
MSB (first bit transmitted)
No data field if DLC=O
ESI: Error State lndicator
ESI = “1” (recessive) = true
Transmitting ECU is error passive
ESI = “0" (dominant) = false
Transmitting ECU is error active
17 bits
LSB
Embedded System Lab

## Page 46

원관대및
Arbitration Phase
CAN FD Standard Frame
Data Phase (if BRS recessive)
Arbitration Phase
Arbitration field
base ID
Contro.l fie.l.<...
DLC
0
Data fieldl)
CRC field
LL
tuff Count CRC se uence 으 石
C C
0 “ = °兮 21bits or
0
MSB (first bit transmitted)
• Nodata field if DLC=O
17 bits
LSB
-46-
DLC: Data Length Code
DLC: 0000 ~ 1000 (same as classic CAN DLC)
20 ~ 8 bytes
DLC: 1001 ~ 1111 (different from classic CAN DLC)
12, 16, 20, 24, 32, 48, 64 bytes
Embedded System Lab

## Page 47

원관대및
Number of
Data Bytes
-47-
DLC3
CAN FD 0[0
DLC2
DLCI
DLCO
Embedded System Lab

## Page 48

원관대및
Number of
Data Bytes
16
20
24
32
48
64
DLC3
CAN FD 0[0
DLC2
DLCI
DLCO
Embedded System Lab

## Page 49

원관대및
CAN FD 080 FieId
Stuff count
3 bit Gray code
" To count the number of stuff bits from SOF to Data field with mod 8
1 parity bit
Even parity with 3 bit Gray code and 1 parity bit
Arbitration Phase
Arbitration field
base ID
Data Phase (if BRS recessive)
Arbitration Phase
Control field
DLC
0 로 0)
Data fieldl)
CRC field
tuff Count CRC se uence 으 石
C C
0 ” 21bits or
0
MSB (first bit transmitted)
-49-
No data field if DLC=O
17 bits
LSB
Embedded System Lab

## Page 50

CAN FD 080 FieId
원관대및
Gray code count of stuff bits from SOF to data field (mod 8)
Parity bit
Stuff bit count
mod 8
-50-
Stuff count
Gray-coded value
000
001
011
010
110
101
100
Parity bit
Embedded System Lab

## Page 51

원관대및
CAN FD 080 FieId
CRC sequence
A CAN FD ECU uses different CRC generator-polynomials
for different frame formats.
Arbitration Phase
Arbitration field
base ID
OO
Data Phase (if BRS recessive)
Arbitration Phase
LL
Control field
DLC
0 로 0)
Data field
C C
CRC.fiaLd ..
CRC se uence 들 음 8
tuff Count
= °兮 21bitsor 3
0
MSB (first bit transmitted)
-51-
No data field if DLC=O
17 bits
•• LSB
Embedded System Lab

## Page 52

원관대및
EI
LL
CAN FD Standard Frame
Up t0 16 byte data field (DLC = 0000 ~ 1010)
1 7bit CRC sequence
Arbitration Phase
Arbitration field
base ID
Data Phase (if BRS recessive)
Control field
DLC
- (0 CN』 = 0
로 7)
MSB (first bit transmitted)
Data field
tuff Count
C C
No data field if DLC=O
Arbitration Phase
RC field
CRC se uenc
(0 LO
Embedded System Lab

## Page 53

원관대및
EI
CAN FD Standard Frame
More than 16 byte data field (DLC = 1011 ~ 1111)
21 bit CRC sequence
Arbitration Phase
Arbitration field
base ID
OO
MSB (first bit transmitted)
Data Phase (if BRS recessive)
Control field
Data field
C C
RC field
CRC se
uenc
0
DLC
0)
tuff Count
No data field if DLC=O
Arbitration Phase
Embedded System Lab

## Page 54

CAN FD 080 FieId
원관대및
CRC15
AII frames in CAN format
CRC17
in CAN FD format with a data fieldu
to 76b
CRC21
in CAN FD format with a data field > 76 b
e /0煽
Arbitration Phase
Arbitration field
base ID
OO
Data Phase (if BRS recessive)
e /0煽
Arbitration Phase
CRC.fiaLd ..
LL
Control field
DLC
로 0)
Data field
C C
CRC se uence 들 음 8
tuff Count
= °兮 21bitsor 3
MSB (first bit transmitted)
No data field if DLC=O
17 bits
•• LSB
Embedded System Lab

## Page 55

080 polynomials
원관대및
CAN
CRC-15
" 0)(C599
(1100 0101 1001 1001)2
()(15十)(14十)(10十)(8十)(7十)(4十)(3十 1 )
Hamming distance: 6
()(7十)(3十)(2十)(十 1 )
Embedded System Lab

## Page 56

080 polynomials
원관대및
CAN FD
CRC-17
" 0)(3685
(00 0011 0110 1000 0101) 2
()(17十)(16十)(14十)(13十)(11 十)(6十)(4十)(3十)(1 十 1 )
= ()(十1) • ()(16十)(13十)(10十)(9十)(8十)(7十)(6十)(3十1)
Hamming distance: 6
CRC-21
0)(302899
(11 0000 0010 1000 1001 1001) 2
()(21十)(20十)(13十)(11十)(7十)(4十)(3十1 ) = ()(十1 )
Hamming distance: 6
-56-
()(10十)(3十)(2十)(1十1 )
Embedded System Lab

## Page 57

CAN FD 080 FieId
원관대및
At the start of the frame,
three CRC sequences shall be calculated concurrently
" The ECU that wins the arbitration sends the CRC sequence
selected by the values 0f the frame's EDL bit and DLC.
The Receivers shall consider only the selected CRC
polynomial t0 check for a CRC-error.
-57-
Embedded System Lab

## Page 58

CIassic CAN 080 FieId
원관대및
Calculation of CRC sequence
by the sender CAN controller
Destuff the bit sequence from SOF to data
SOF
SOF
ID
ID
TR rl r0 DLC DLC DLC DLC
3 2
Destuffing
TR rl r0 DLC DLC DLC DLC
3 2
Destuffed bit sequence
Data
Data
Embedded System Lab

## Page 59

CIassic CAN 080 FieId
원관대및
Calculation of CRC sequence
by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0" to the (destuffed) bit sequence from SOF to data
Divide the above result (in modulo 2)
by (1100 0101 1001 1001)2 (0)(C599)
ㆍ The remainder of this division, 15 bits, is CRC sequence
1100 0101 1001 1001
SOF
-59-
ID
RTR rl r0
DLC DLC DLC DLC
Data
3 2
000 0000 0000 0000
Embedded System Lab

## Page 60

CIassic CAN 080 FieId
원관대및
The sender CAN controller
appends 15 bit CRC sequence and
lbit CRC delimiter (whose value is
after data field
SOF ID
11 bits
-60-
TR 「1 r0 DLC DLC DLC DLC
1
0
lbit
Data
CRC
Field
CRC
Sequence
15 bits
RC
lbit
EOF
Embedded System Lab

## Page 61

CAN FD 080 FieId
원관대및
Calculation of CRC sequence
by the sender CAN FD controller (data 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 17 bit “0" to the bit sequence from SOF to stuffcount
Bit streams for CRC sequence
SOF
-61-
ID
Stuff
rl 「0 芿 DLC Data
0 0000 0000 0000 0000
count
Embedded System Lab

## Page 62

CAN FD 080 FieId
원관대및
Calculation of CRC sequence
by the sender CAN FD controller (data 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 17 bit “0" to the bit sequence from SOF to stuffcount
Divide the above result (in modulo 2)
by (00 0011 0110 1000 0101)2 (0)( 3685)
• The remainder 0f this division, 17 bits, is CRC sequence
00 0011 0110 1000 0101
SOF
ID
Stuff
「1 r0 00 DLC Data
0 0000 0000 0000 0000
count
Embedded System Lab

## Page 63

CAN FD 080 FieId
원관대및
The sender CAN controller
appends 17 bit CRC sequence and lbit CRC delimiter
after stuff count
SOF
ID
「1 r0 菂
DLC
Stuff
Data
Count
CRC
Field
CRC
Sequence
17 bits
CRC
Del
lbit
EOF
Embedded System Lab

## Page 64

CAN FD 080 FieId
원관대및
Calculation of CRC sequence
by the sender CAN FD controller (data > 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 21 bit “0" to the bit sequence from SOF to stuffcount
Divide the above result (in modulo 2)
by (11 0000 0010 1000 1001 1001)2 (0)(302899)
• The remainder 0f this division, 21 bits, is CRC sequence
11 0000 0010 1000 1001 1001 SOF
ID
Stuff
「1 rO (刀 DLC Data
0 0000 0000 0000 0000 000
count
Embedded System Lab

## Page 65

CAN FD 080 FieId
원관대및
The sender CAN controller
appends 21 bit CRC sequence and 1 bit CRC delimiter
after stuff count
SOF
ID
「1 r0 菂
DLC
Stuff
Data
Count
4 its
CRC
Field
CRC
Sequence
21 bits
CRC
Del
lbit
EOF
Embedded System Lab

## Page 66

원관대및
-66-
CAN FD 080 FieId
CRC delimiter
The CRC sequence is followed by the CRC delimiter.
ln CAN format,
CRC delimiter one single recessive bit
Embedded System Lab

## Page 67

원관대및
-67-
CAN FD 080 FieId
CRC delimiter
The CRC sequence is followed by the CRC delimiter.
ln CAN format,
CRC delimiter one single recessive bit
ln CAN FD format,
CRC delimiter may consist Of 0煽e or two recessive bits.
Embedded System Lab

## Page 68

CAN FD 080 FieId
원관대및
ln CAN FD format,
When a Transmitter sends only one recessive bit as CRC delimiter,
" But due t0 phase shift, a receiver may accept delimiter 0f up t0 2 bit
times.
A Receiverwill send its acknowledgement bit
after the first CRC delimiter bit.
Embedded System Lab

## Page 69

CAN FD 080 FieId
원관대및
CAN FD 한otoc이 controllers switch back
from the data phase tO the arbitration phase
when they reach the sample point Of the (first bit of the) CRC
delimiter.
CRC FIELD
CRC
CRC
SEQUENCE DELIMITER
DATA PHASE
-69-
최- ACK FIELD
END OF FRAME
ACK
SLOT
ACK
DELIMITER
ARBITRATION PHASE
Embedded System Lab

## Page 70

CAN FD ACK FieId
원관대및
ln the ACK FIELD, the transmitting ECU sends recessive
bits.
The phase-shift between the ECUs in a CAN network
is defined by the delay times in the transceivers and
the propagation time on the CAN bus line.
The phase-shift is the same in CAN and in CAN FD
but it is proportionally larger in the phase with the shorter bit time.
-70-
Embedded System Lab

## Page 71

CAN FD ACK FieId
원관대및
AII Receivers in the network may have
a different phase-shift t0 the Transmitter,
depending on their distances from the Transmitter,
since they see the transmitted edges at different times.
-71-
Embedded System Lab

## Page 72

CAN FD ACK FieId
원관대및
AII Receivers in the network may have
a different phase-shift t0 the Transmitter,
depending on their distances from the Transmitter,
since they see the transmitted edges at different times.
TO compensate for these phase-shifts
when the bit rate is switched back
from the shorter tO the longer bit time,
one additional bit time tolerance is allowed
before and after the edqe from recessive tO dominant
that starts the ACK slot
Embedded System Lab

## Page 73

CAN FD ACK 90t
원관대및
ln CAN FD format,
ECU shall accept
a two bit lonq dominant phase Of overlapping ACK bit
as a valid ACK,
tO compensate for phase shifts between the Receivers.
ln CAN format,
a dominant bit following the single ACK slot bit is a form-error.
Embedded System Lab

## Page 74

ACK DeIimiter
원관대및
The recessive ACK delimiter is the last bit of the ACK field.
As a consequence, the ACK sIOt is surrounded
by two recessive bits (CRC delimiter, ACK delimiter).
CRC FIELD
CRC
CRC
SEQUENCE DELIMITER
DATA PHASE
- ACK FIELD
<—END OF FRAME
ACK
SLOT
ACK
DELIMITER
ARBITRATION PHASE
Embedded System Lab

## Page 75

원관대및
End Of Frame
Each data frame is delimited
by a flag sequence consisting Of 7 recessive bits.
Arbitration Phase
Arbitration field
base ID
OO
Data Phase (if BRS recessive)
Arbitration Phase
Control field
DLC
로 0)
Data field
C C
CRC field
tuff Count CRC se uence
= °兮 21bits or
17 bits
0
0
LL
MSB (first bit transmitted)
No data field if DLC=O
LSB
Embedded System Lab

## Page 76

원관대및
L.L
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
From SOF to data field,
" As in the standard CAN stuffing mechanism,
> the max number of consecutive bits with the same value is five,
> the max distance btw edges for resynchronization is ten.
Same bit stuffing as CAN
Arbitration Phase
Arbitration field
base ID
0 00
Data Phase (if BRS receésive)
Arbitration Phase
Control field
DLC
0 로
Data fieldl)
CRC field
tuff Count CRC se uence
C C
0 °兮 21bits or
•MSB (first blt•transmittett)••
-76-
•「『e脣 ÜLC=O
17 bits
LSB
Embedded System Lab

## Page 77

원관대및
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
ln CRC field,
" Bit stuffing rule is different from the classic CAN
Different bit stuffing
from CAN
Arbitration Phase
Arbitration field
base ID
Data Phase (if BRS rece4sive)
Arbitration Phase
Control field
DLC
0 로 0)
Data fieldl)
CRC field
tuff Count CRC se uenc
C C
0 21bits 0「
0
MSB (first bit transmitted)
-77-
No data field if Ch-•()=0•
17bits
Embedded System Lab

## Page 78

원관대및
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
ln CRC field,
" Bit stuffing rule is different from the classic CAN
2 The stuff bits shall be inserted at fixed positions.
> CRC field starts with a fixed stuff bit.
> Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
> Every stuff bit value is the opposite value Of the previous bit.
Different bit stuffing
from CAN
Arbitration Phase
Arbitration field
base ID
Data Phase (if BRS rece4sive)
Arbitration Phase
Control field
DLC
0 로 0)
Data fieldl)
CRC field
tuff Count CRC se uenc
C C
0 21bits 0「
0
MSB (first bit transmitted)
No data field if Ch-•()=0•
17bits
Embedded System Lab

## Page 79

Bit Stuffing in CAN-FD
원관대및
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value 0f the previous bit.
Example 1
CRC 17, Stuff count = 0
CRC field
S 0000 1 CCCC S CCCC S CCCC S CCCC S C
ㆍ C: bits in CRC sequence
red: fixed stuff bits
Embedded System Lab

## Page 80

Bit Stuffing in CAN-FD
원관대및
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value 0f the previous bit.
Example 2
CRC 17, Stuff count = 3
CRC field
S 0101 0 CCCC S CCCC S CCCC S CCCC S C
ㆍ C: bits in CRC sequence
red: fixed stuff bits
-80-
Embedded System Lab

## Page 81

Bit Stuffing in CAN-FD
원관대및
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value 0f the previous bit.
Example 3
CRC 21, Stuff count = 5
-81-
Embedded System Lab

## Page 82

Bit Stuffing in CAN-FD
원관대및
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value 0f the previous bit.
Example 3
CRC 21, Stuff count = 5
CRC field
S 1111 0 CCCC S CCCC S CCCC S CCCC S CCCC S C
ㆍ C: bits in CRC sequence
red: fixed stuff bits
Embedded System Lab

## Page 83

CAN FD Bit Time Reauirements
원관대및
The CAN FD 한otoc이 defines two bit rates
for the arbitration-phase with a longer bit time
The same as for the nominal bit rate and the nominal bit time
in the CAN 한0t0C01 specification
for the data phase with the same or with a shorter bit time
Data bit rate with the data bit time requires
a separate configuration register set.
Embedded System Lab

## Page 84

CAN FD Bit Time Reauirements
원관대및
Time quantum for the nominal bit time
• TQ(N)= m(N) * min TQ
" m(N) for the nominal bit time
Time quantum for the data bit time
• TQ(D) = m(D) * min TQ
• m(D) for the data bit time
Embedded System Lab

## Page 85

CAN FD Bit Time Reauirements
원관대및
Nominal bit time
Sync-seg, Prop_seg, Phase segl, Phase seg2
SYNC SEG
NOMINAL
PROP SEG
BIT TIME
PHASE SEGI
PHASE SEG2
SAMPLE POINT
Embedded System Lab

## Page 86

CAN FD Bit Time Reauirements
원관대및
Data bit time
Sync-seg, Prop_seg, Phase segl, Phase seg2
DATA BIT TIME
SYNC SEG
-86-
PROP SEG
PHASE SEGI
PHASE SEG2
SAMPLE POINT
Embedded System Lab

## Page 87

Synchronization Segment (SYNC-SEG)
원관대및
Sync_seg
The first segment in the NBT
ls used tO synchronize the nodes 0煽 the bus
Bit edges are expected t0 0CCIJr within the SYNC SEG
ls fixed at ITQ (Time Quantum)
1 TQ(N) for nominal bit rate
1 TQ(D) for data bit rate
NOMINAL OR DATA BIT TIME•
SYNC SEG
PROP SEG
PHASE SEGI
PHASE SEG2
SampIe P0int

## Page 88

ProDagation Time Segment [PROP-SEG)
원관대및
ln the nominal bit time,
Propagation time segment
is used tO compensate for the physical delay times between nodes
twice the sum Of the signal's propagation time on the bus line, the input
comparator delay, and the output driver delay
= 2(tbus + tRx+t
prop
SYNC SEG
NOMI
PROP SEG
AL BIT TIME
PHASE SEGI
PHASE SEG2
Sample Point
Embedded System Lab

## Page 89

ProDagation Time Segment [PROP-SEG)
원관대및
ln the data bit time,
Propagation time segment
May be set tO a length Of zero time quantum.
because only one ECU can send its signal during the data phase.
ls NOT required t0 compensate for the physical delay times
between ECUs
-89-
Embedded System Lab

## Page 90

ProDagation Time Segment [PROP-SEG)
원관대및
ls programmable
1 ~ 32 or more TQ(N) for nominal bit rate
0 ~ 8 TQ(D) for data bit rate
-90-
Embedded System Lab

## Page 91

6? Phase Segments (PHASE-SEGI & PHASE-SEG2)
원관대및
Are used t0 compensate for edge phase errors 0煽 the bus
PSI can be lengthened
or PS2 can be shortened by resyncronization
NOMINAL OR DATA BIT TIME•
SYNC SEG
-91-
PROP SEG
PHASE SEGI
PHASE SEG2
Sam le Point
Embedded System Lab

## Page 92

6? Phase Segments (PHASE-SEGI & PHASE-SEG2)
원관대및
Are used t0 compensate for edge phase errors 0煽 the bus
PSI can be lengthened
or PS2 can be shortened by resyncronization
PSI is programmable
1 ~ 32 or more TQ(N) for nominal bit rate
1 ~ 8 TQ(D) for data bit rate
PS2
• PS2(N) = Max (PSI(N), IPT(N))
• PS2(D) = Max (PSI(D), IPT(D))
lnformation Processing Time
IPT.
Embedded System Lab

## Page 93

SamDIe POint
원관대및
The point oftime at which the bus level is read and
interpreted as the value 0f that respective bit
lt's location is at the end of PHASE SEGI.
NOMINAL OR DATA BIT TIME•
SYNC SEG
PROP SEG
PHASE SEGI
PHASE SEG2
SampIe P0int
Embedded System Lab

## Page 94

SamDIe POint
원관대및
The point oftime at which the bus level is read and
interpreted as the value 0f that respective bit
lt's location is at the end of PHASE SEGI.
The position Of the sample point may differ
in the two bit timing configurations
the length of the PROP_SEG may be reduced
in the configuration for the data bit rate.
Embedded System Lab

## Page 95

lnformation Processing Time (IPT)
원관대및
The time segment starting with the sample point
reserved for calculation the subsequent bit level
lts length is determined by the CAN controller implementation.
The time required for the logic
t0 determine the bit level 0f a sampled bit
The IPT is less than or equal t0
2 TQ(N) long for nominal bit rate
2 TQ(D) long for data bit rate
Embedded System Lab

## Page 96

원관대및
Bit Rate Switch
Nominal bit rate
From SOF to the front part of BRS bit
From the latter part of CRC delimiter to EOF
Error & overload frames in CAN FD
AII frames in classic CAN
Arbitration Phase
Data Phase (if BRS recessive)
Årbitration Phase
Arbitration field
base ID
CO
\이 field
DLC
(0 CN』 = 0
7)
Data field
C C
CRC field
tuff Count
CRC se
(0 LO
uence
0
0
0
MSB (first bit transmitted)
-96-
0
0
0
No data field if DLC=O
Embedded System Lab

## Page 97

원관대및
-97-
Bit Rate Switch
lfthe BRS bit is recessive,
the bit rate is switched
" From the latter part 0f BRS bit t0 the front par 0f CRC delimiter
If the CAN FD controller sees an error condition,
it will start to send an error frame at normal bit rate.
Arbitration Phase
Arbitration field
base ID
CO
Data Phase (if BRS recessive)
\이 field
DLC
Data fieldl)
CRC field
CRC se
0
MSB (first bit transmitted)
0
tuff Count
C C
1) No data field if DLC=O
uence
LS
rbitration Phase
0
Embedded System Lab

## Page 98

Bit Rate Switch
원관대및
When the bit rate is switched at the BRS bit
it shall be switched immediately after the sample point,
Arbitration
Phase
BRS BIT
1 TIME QUANTIJM (tq)
Data
Phase
SAMPLE POINT
L-ab

## Page 99

Bit Rate Switch
원관대및
When the bit rate is switched at the CRC delimiter bit,
it shall be switched immediately after the sample point,
Data Phase Arbitration Phase
CRC D LIMITER
SAMPLE POINT
1 TIME QIJANTUM (더)
-99-
Embedded System Lab

## Page 100

Bit Rate Switch
원관대및
Sum of BRS and CRC delimiter bits
Sum of one nominal bit time and one data bit time.
BRS BIT
1 TIME QUANTUM (tq)
SAMPLE POINT
CRC D LIMITER
AMPLE POINT
1 TIME QUANTIJM (더)
-100-
Embedded System Lab

## Page 101

Bit Rate Switch
원관대및
When an error condition is detected during the data bit
time
bit rate switching time may be shifted after the sample point,
by the length of the IPT.
-101-
Embedded System Lab

## Page 102

ExamDIe
원관대및
Nominal bit time
PROP_SEG(N) = 6, PHASE_SEGI (N) = 4, PHASE_SEG2(N) = 4
Data bit time
PROP_SEG(D) = 1, PHASE SEGI(D) = 4, PHASE SEG2(D) = 4
lntermediate length BRS and CRC delimiter
-102-
Embedded System Lab

## Page 103

원관대및
-103-
ExamDIe
Nominal bit time
PROP_SEG(N) = 6, PHASE_SEGI (N) = 4, PHASE_SEG2(N) = 4
|“- NOMINAL BIT TIME
〉출十출十출十4
SYNC SEG
PROP SEG
PHASE SEGI
1 TIME QUANTIJM (ta)
PHASE SEG2
SAMPLE POINT
Embedded System Lab

## Page 104

ExamDIe
원관대및
Data bit time
rm(D)=1
PROP_SEG(D) = 1, PHASE_SEGI (D) = 4, PHASE_SEG2(D) = 4
|“- NOMINAL BIT TIME
출.4
SYNC SEG
PROP SEG
1 TIME QUANTUM (더)
DATA BIT TIME
SAMPLE POINT
1 TIME QUANTUM (더)
-104-
PHASE SEGI
DATA BIT TIME
AMPLE POINT
PHASE SEG2
SAMPLE POINT
DATA BIT TIME
AMPLE POINT
Embedded System Lab

## Page 105

ExamDIe
원관대및
lntermediate length BRS and CRC delimiter
BRS BIT
1 TIME QUANTUM (tq)
SAMPLE POINT
CRC DELIMITER
AMPLE POINT
1 TIME QUANTUM (더)
-105-
Embedded System Lab

## Page 106

Hard Synchronization
원관대및
After a hard synchronization,
the internal bit time is restarted with SYNC SEG.
Sync Seg
Prop Seg
ECU
Bus ldle
Sync—Seg
A OUtPUt
bus line
B input
Prop Seg
Phase—Seg1
Start 하 Frame Bit
Phase Seg2
Bit SampIe POint
Phase Seg1
ECU B
-106
Phase_Seg2
Bit SampIe Point
Embedded System Lab

## Page 107

Resynchronization JumD Width (RJW)
원관대및
AS a result Of resynchronization
PHASE SEGI may be lengthened
or PHASE SEG2 may be shortened.
RJW
The max value 0f lengthening PHASE SEGI
The max value Of shortening of PHASE_SEG2
-107-
Embedded System Lab

## Page 108

Resynchronization JumD Width (RJW)
원관대및
ProgrammabIe RJW(N) and RJW(D)
1 RJW(N) min(16,PHASE SEGI(N))
1 RJW(D) min(4, PHASE_SEGI(D))
-108-
Embedded System Lab

## Page 109

Phase Errors
원관대및
The phase error 0f a bit is given
by the position ofthe edge in relation t0 the SYNC SEG
measured in TQ
-109-
Embedded System Lab

## Page 110

원관대및
-110-
Phase Errors
e=0
the edge lies within the SYNC_SEG
e>0
the edge lies btw the SYNC_SEG and the sample point
before the sample point
e<0
the edge lies btw the sample point and the following bit's SYNC_SEG
• after the sample point 0f the previ0US bit
Embedded System Lab

## Page 111

ldeal Bit Timing (e = 0]
원관대및
Received Bit Level
Bit Timing
<Wilfred VOSS>
-111-
Y
N
Prop-
Phase-Seg 1
Seg
Y
Phase-Seg 2
N
Prop-
Phase-Seg 1
Seg
Y
Phase-Seg 2
N
Prop-
Phase-Seg 1
Seg
Embedded System Lab

## Page 112

Positive Phase Error (e 〉 0]
원관대및
Received Bit Level
0
Phase-Seg 1
Bit Timing
<Wilfred VOSS>
-112-
Phase-Seg 2
Previous Bit
Y
N
Prop-
Seg
Phase-Seg 2
Current Bit
Embedded System Lab

## Page 113

Negative Phase Error (e 〈 0]
원관대및
Received Bit Level
Y
N
Prop-
Seg
0
Phase-Seg 1
Bit Timing
<Wilfred VOSS>
-113-
0
Phase-Seg 2
Previous Bit
Current Bit
Phase-Seg 2
Embedded System Lab

## Page 114

6
원관대및
Received Bit Level
Bit Timing without
Resynchronization
Bit Timing with
Resynchronization
<Wilfred VOSS>
-114-
Comoensation Of Positive Phase Errors
0
Phase-Seg 1
Y
N
Y
N
P『op-
Seg
Prop-
Seg
Y
Phase Seg 2
N
SJW
p-
Seg
Y
Phase-Seg 1
Prop-
Y
Phase-Seg 2
N
Prop-
Seg
Y
Phase-Seg 1
Phase-Seg 2
N
Phase-Seg 1
Seg
Phase-Seg 2
N
Phase-Seg 1
하op-
Phase-Seg 1
Seg
Embedded System Lab

## Page 115

6
원관대및
Received Bit Level
Bit Timing without
Resynchronization
Bit Timing with
Resynchronization
Comoensation Of Negative Phase Errors
Phase Seg 2
SJW
Y
N
Prop-
Seg
Y
Phase Seg 1 Phase-Seg 2
Prop-
Y
Phase-Seg 1
Phase-Seg 2
Prop-
Phase-Seg 1
Phase
Y
-Seg
N
2
Prop-
Seg
Phase-Seg 1
Y
Phase-Seg 2
N
Prop-
Seg
Phase-Seg 1
Y
Phase-Seg 2
N
Prop-
Seg
Phase-Seg 1
<Wilfred VOSS>
-115-
Embedded System Lab

## Page 116

Resynchronization
원관대및
When lel RJW,
the effect 0f a Resynch is the same as that 0f a Hard synch
RJW: Resynchronization Jump Width
(or SJW (Synchronization Jump Width).
When lel RJW and e > 0,
PHASE SEGI is lengthened by l이
When lel RJW and e < 0,
PHASE SEG2 is shortened by lel
-116-
Embedded System Lab

## Page 117

Resynchronization
원관대및
When lel > RJW,
Resynchronization cannot compensate the phase error completely,
An error Of (l이 - RJW) remains
When lel > RJW and e > 0,
then PHASE SEGI is lengthened by an amount equal t0 the RJW.
When lel > RJW and e < 0,
then PHASE_SEG2 is shortened by an amount equal tO the RJW.
-117-
Embedded System Lab

## Page 118

원관대및
TRANSCEIVER DELAY
COMPENSATION
-118-
Embedded System Lab

## Page 119

Transceiver Delay
원관대및
Let's SUPP0se that
Transceiver's internal delay time : 200 nsec
" Current high speed CAN transceivers may have a IOOP delay
(from the CAN Tx pin t0 the CAN Rx pin) 0f up t0 255 ns.
Bit rate in the data phase: 10 Mbps
One data bit time: 100 nsec
(the length of the CAN bit time in the data-phase) is shorter than
(the limit required by the transceiver's internal delay time) )
-119-
Embedded System Lab

## Page 120

Transceiver Delay
원관대및
Let's SUPP0se that
Transceiver's internal delay time : 200 nsec
" Current high speed CAN transceivers may have a IOOP delay
(from the CAN Tx pin t0 the CAN Rx pin) 0f up t0 255 ns.
Bit rate in the data phase: 10 Mbps
One data bit time: 100 nsec
Without a transceiver delay compensation,
the Transmitter ECU detects a bit error
-120-
Embedded System Lab

## Page 121

Transceiver Delay
원관대및
Bit (monitoring) Error
MCU
Core
CAN ControIIer
CAN
Transceiver
Tx-Rx loop delay
CANH
CANL
-121-
MCU
Core
CAN ControIIer
CAN
Transceiver
MCU
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 122

Transceiver Delay
원관대및
Transceiver's internal delay time : 200 nsec
Current high speed CAN transceivers may have a IOOP delay
(from the CAN Tx pin tO the CAN_Rx pin) Of up tO 255 ns.
Bit rate in the data phase. 10 Mbps
One data bit time: 100 nsec
-122-
Embedded System Lab

## Page 123

Transceiver Delay
원관대및
Transceiver's internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps
1100ns
value
value
-123-
Bus idle
Transpeiver
100ns
elay time
Bus idle
Sample point for the first bit Bit error!
time
Embedded System Lab

## Page 124

Transceiver Delay Comoensation
원관대및
CAN FD ECUs
support an optional transceiver delay compensation mechanism,
tO be used in applications where
(the length 0f the CAN bit time in the data-phase) is shorter than
(the limit required by the transceiver's internal delay time) )
-124-
Embedded System Lab

## Page 125

Transceiver Delay Comoensation
원관대및
Transceiver delay compensation mechanism
defines a secondary sample point
where the transmitted bit is compared with the received bit
in order to check for bit errors
shall only be used
by Transmitters in the data-phase Of a CAN FD frame
When the transceiver delay compensation is used,
the Transmitter ignore
the bit value received at the sample point .
-125-
Embedded System Lab

## Page 126

Transceiver Delay Comoensation
원관대및
The position 0f the secondary sample point (SSP)
TRV DELAY + an offset
TRV DELAY value is a node-specific value.
lt does not depend on signal propagation times on the CAN bus
line.
A configurable offset is added t0 the measured delay value
t0 place the SSP
into the middle of the bits seen at CAN Rx.
-126-
Embedded System Lab

## Page 127

Transceiver Delay Comoensation
원관대및
The position 0f the secondary sample point
TRV DELAY + an offset
" Rounded down t0 the next integer number 0f TQ
TRV DELAY + an offset
*TQ
TQ
-127-
Embedded System Lab

## Page 128

Transceiver Delay Comoensation
원관대및
The delay t0 be compensated, TRV DELAY
shall be measured in each transmitted frame
at the falling edge from the EDL bit tO the following reserved bit r0,
between the edges 0f the transmitted bit and the received bit.
Transceiver
LOOP Delay
BRS
CAN Tx
CAN Rx
-128-
EDL
arbitration phase
arbitration P
rO
ase
DLC
data phase
data phase
Embedded System Lab

## Page 129

Transceiver Delay Comoensation
원관대및
The CAN FD controller can perform TRV DELAY by itself.
The delay is measured (in system clock periods)
by a counter that starts at the beginning 0f the bit 『0 at CAN Tx and
stops when the edge is seen at CAN Rx.
Transceiver
LOOP Delay
BRS
CAN Tx
CAN Rx
EDL
arbitration phase
arbitration p ase
rO
Start Stop
Delay Counter
System CIock
-129-
data phase
data phase
Lab

## Page 130

Transceiver Delay Comoensation
원관대및
An offset value
Can be determined by setting a register value
e.g. half 0f the bit time in the data phase
-130-
Embedded System Lab

## Page 131

Transceiver Delay Comoensation
원관대및
The position 0f the secondary sample point
TRV DELAY + an offset
-131-
Embedded System Lab

## Page 132

Transceiver Delay Comoensation
원관대및
The position 0f the secondary sample point
TRV DELAY + an offset
Transceiver
LOOP Delay
EDL
arbitration phase
rO
CAN Tx
CAN Rx
System CIock
arbitration P ase
Start Stop
DeIay Counter
BRS
十
DeIay Compensation Offset
DLC
data phase
data phase
SSP Position
emoeaaea oystem L-ab

## Page 133

Transceiver Delay Comoensation
원관대및
The resulting secondary sample point
may be placed after the end 0f the transmitted bit.
-133-
Embedded System Lab

## Page 134

Transceiver Delay Comoensation
원관대및
Example
Transceiver's internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps
-134-
Embedded System Lab

## Page 135

Transceiver Delay Comoensation
원관대및
Example
Transceiver's internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps
Without transceiver delay compensation,
the original sample point for the first bit produces one bit error!
100ns 100ns
Bus idle
value
Transceiver
value
elay time
Bus idle
OriginaI Sample point for the first bit Bit error!
-135-
time
Embedded System Lab

## Page 136

Transceiver Delay Comoensation
원관대및
Example
Transceiver's internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps
With transceiver delay compensation,
The bit value at the secondary sample point
is compared with the transmitted bit value.
-136-
Embedded System Lab

## Page 137

Transceiver Delay Comoensation
원관대및
With transceiver delay compensation,
The bit value at the secondary samp/e point
is compared with the transmitted bit value.
:100ns
100ns
value
value
-137-
Bus idle
Transceiver delay time
Bus idle
IOffse
“0
Secondary sample point for the first bit
time
Embedded System Lab

## Page 138

Transceiver Delay Comoensation
원관대및
With transceiver delay compensation,
The bit value at the secondary samp/e point
is compared with the transmitted bit value.
:100ns
Bus idle
value
value
-138-
100ns
。勿b하
Bus idle
“0
Secondary sample point for the first bit OK !
time
Embedded System Lab

## Page 139

Transceiver Delay Comoensation
원관대및
If a bit error is detected at the secondary sample point ,
the Transmitterwill react to this bit error
at the next following samp/e point .
-139-
Embedded System Lab

## Page 140

Transceiver Delay Comoensation
원관대및
With transceiver delay compensation,
Existing high speed CAN transceivers can transmit and receive bits
that are shorter than their IOOP delay.
ln this case, the check for bit errors needs t0 be delayed
until the bit value which is transmitted at the CAN Tx output
is looped back tO the CAN_Rx input.
-140-
Embedded System Lab

## Page 141

Transceiver Delay Comoensation
원관대및
EV Receivers dO not need this mechanism.
Transmitters apply it in the Data-Phase 0f a frame.
-141-
Embedded System Lab

## Page 142

Transceiver Delay Comoensation
원관대및
When the Transceiver DeIay Compensation mechanism is
enabled,
it changes the way how a transmitter checks for bit errors
during the Data-Phase of a CAN FD frame
from {direct comparison Of transmitted and received bits
at the CAN SampIe-P0int }
t0 {a delayed comparison at the SSP}.
-142-
Embedded System Lab

## Page 143

Transceiver Delay Comoensation
원관대및
The position 0f the SSP is always
relative to the start of a transmitted bit.
lt may be more than one bit time after the end Of that bit.
Transmitted bits are buffered until the SSP is reached.
Then their value is compared with
the actual value Of the input signal tO check for bit errors.
-143-
Embedded System Lab

## Page 144

Transceiver Delay Comoensation
원관대및
lfa bit error is detected,
this information is buffered
until the next CAN SampIe-Point is reached
the bit rate is switched back to that of the Arbitration-Phase
Embedded System Lab

## Page 145

Transceiver Delay Comoensation
원관대및
When no bit error is detected
until the Sample-Point of the CRC DeIimiter is reached,
the CAN FD 한otoc이 controller
switches back the arbitration phase bit rate and
returns tO standard bit error checking.
-145-
Embedded System Lab
