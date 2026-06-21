# Classic CAN

- 원본: [Classic CAN.pdf](<../교안/Classic CAN.pdf>)
- 생성 방식: 이미지 렌더링 후 Windows OCR(ko)

## Page 1

CAN
전 재 욱
Embedded System 연구실
성균관대학교
Embedded System Lab

## Page 2

INTRO TO CAN
Embedded System Lab

## Page 3

lntroduction tO CAN
CAN (Contr011er Area Network) by Bosch
CAN
Very reliable data transmission
Real-time requirements
StiII used in networking ECUs
Embedded System Lab

## Page 4

CAN BLIS Networking
Embedded System Lab

## Page 5

(Before)
ConventionaI Connection
VehicIe Wiring: conventional multi•wire looms
-수결1= -수규-
lbedded System Lab

## Page 6

(After)
CAN BLIS Networking
Vehicle Wiring: CAN 816 network
=뇨
ECM
0
1.로羲
BCM
0
CANBUS
ded System Lab

## Page 7

CAN BLIS Networking
BMW 850 coupe
The first CAN Bus vehicle in 1986
Embedded System Lab

## Page 8

CAN BLIS Networking
AppIication result
Reduction
VehicIe wiring
Vehicle overall weight
Connector
2km
50kg
Half
Embedded System Lab

## Page 9

LAYERS OF CAN
Embedded System Lab

## Page 10

㉦
7
6
5
4
3
2
1
-10-
Standard and lmolementation
Application
Layer
Presentation
Layer
Session
Layer
Transport
Layer
Network
Layer
9S
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
Application Layer
Ⅴ Message format, Human-Machine lnterfaces
Presentation Layer
17 C0ding int0 ls and Os; encryption, compression
Session Layer
Ⅴ Authentication, permISSions, session restoration
Transport Layer
17 End-to-end error control
Network Layer
1/ Network addressing; routing or switching
Data Link Layer
17 Error detection, flow control on physical link
PhysicaI Layer
17 Bit stream: physical medium, method Of representing bits
Embedded System Lab

## Page 11

㉦
7
6
5
4
3
2
1
-11-
Standard and lmolementation
Application
Layer
Presentation
Layer
Session
Layer
Transport
Layer
Network
Layer
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
empty
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 12

PhysicaI layer
The way in which the signal is transmitted
PLS (physical signaling)
PMA (physical medium attachment)
PMS (physical medium specification)
MDI (medium-dependent interface)
2
1
-12-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 13

PhysicaI layer
PLS (physical signaling)
Bit representation (coding, timing, etc.)
Bit synchronization
2
1
-13-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 14

PhysicaI layer
PMA (physical medium attachment)
Driver/receiver characteristics
2
1
-14-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 15

PhysicaI layer
PMS (physical medium specification)
application-specific and is not generally standardized
2
1
-15-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 16

PhysicaI layer
MDI (medium•dependent interface)
Connectors/wires
2
1
-16-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
Embedded System Lab

## Page 17

Data link layer
LLC (logical link control)
Message filtering
Overload notification
Error recovery procedure
2
1
-17-
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN
PhysicaI Layer
CAN in the
ISO/OSI ModeI
MAC (medium access control)
Message framing
Arbitration
Acknowledgement
Error detection
Error signaling
Embedded System Lab

## Page 18

㉦
2
1
-18-
Standard and lmolementation
LLC
Data Link
Layer
MAC
ISO/OSI ModeI
(ISO 74980
CAN
하otocol
CAN in the
ISO/OSI ModeI
ISO 11898-1
Standards
CAN
ControlIer
lmplemen
Embedded System Lab

## Page 19

㉦
-19-
MCU [Micro ControIIer Unit)
MCU (Micro Contr011er Unit)
Contains CPU core and other modules
for implementing ECU (EIectronic ControI Unit) efficiently
• SingIe core, MuIticore
RAM, flash
ADC, PWM, Timer, DMA,
SCI, LIN, CAN, FIexRay, FECs
Embedded System Lab

## Page 20

㉦
MuIti core
MCU [Micro ControIIer Unit)
More than one core
DMA
AdditionaI
Core
FIexRay ControIIer
Fast Ethernet ControIIer
-20-
Memory
Core
CAN ControIIer
GPIO
ADC
Timer/Counter
SCI
SPI
PWM
Embedded System Lab

## Page 21

CAN ECU
CAN ECU
MCU
Core
CAN controller
CAN Transceiver
ECU
-21-
MCU
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 22

㉦
2
1
Standard and lmolementation
LLC
Data Link
Layer
MAC
PMA
Physical
Layer
PMS
MDI
ISO/OSI ModeI
(ISO 74980
MCU
Core
CAN ControlIer
CAN
Transceiver
CAN
ControlIer
CAN
1
CAN
하otocol
High Spee
CAN
PhysicaI Layer
OW
CAN in the
ISO/OSI ModeI
ECU
ISO 11898-1
Transce•ver
ISO 11898-2
ISO 11898-3
CiA DS-102
Standards
Transceiver
CAN Bus
Medium
CAN Bus
Connector
lmplemen
Embedded System Lab

## Page 23

CAN NETWORK
Embedded System Lab

## Page 24

CAN Network
ECUs connected via a physical transmission medium
ECU 1
ECU 2
ECU n
Embedded System Lab

## Page 25

㉦
Sender
Sending A CAN Data Frame
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Header
0110.
0 11 0•
data
data
TaiI
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Receiver
Embedded System Lab

## Page 26

㉦
01 10
Receiving A CAN Data Frame
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Header
data
data
TaiI
MCU
Core
CAN ControlIer
CAN
Transceiver
0 11 0•
1
Receiver
Sender
-26-
Embedded System Lab

## Page 27

CAN Network
data
MCU
Core
CAN ControlIer
CAN
Transceiver
1
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Receiver
Sender
-27-
Embedded System Lab

## Page 28

CAN ControIIer
FuII CAN controller
Basic CAN controller
Embedded System Lab

## Page 29

BasiC CAN ControlIer
CAN controller without object storage
Final filtering must be done by the application software
i.e. CPU core
Basic CAN Controller
Transm:t Buffer
Receive Buffer
High
-29-
MCU
CPU
CAN Other
Task Tasks
Embedded System Lab

## Page 30

FulI CAN ControIIer
CAN controller with object storages
Acceptance filtering
8
Full CAN Contr
TX Priority
Transmft Buffer 1
Transmit Buffer 2
Transmit Buffer n
Acceptance
FiIter Receive Buffer 1
Receive Buffer 2
Receive Buffer n
-30-
MCU
CPU
CAN Other
Task Tasks
Embedded System Lab

## Page 31

IMPLEMENTATION OF CAN
NETWORK
-31-
Embedded System Lab

## Page 32

CAN ControIIer
CAN controller and physical transmission medium
are electrically isolated
Although overvoltages on the CAN bus may destroy the CAN
transceiver,
the CAN controller and the underlying hOSt are preserved
MCU •`
Core
CAN ControlIer
CAN
Transceiver
MCU •`
Core
CAN ControlIer
CAN
Transceiver
ECU
RT
Termination
Resistor
-32-
ECU
ECU
CANH
대igh Line)
CANH
(LOW Line)
MCU •`
Core
CAN Controller
CAN
Transceiver
Termination
Resistor
Embedded System Lab

## Page 33

CAN ControIIer
CAN controller
On-chip
Stand-alone
MCU
Core
CAN ControIIer
CAN
Transceiver
MCU
Core
1
ECU
CAN Controller
CAN
Transceiver
ECU
Embedded System Lab

## Page 34

CAN Network
Bus topology
Embedded System Lab

## Page 35

CAN Network
Passive star topology
Stub Line,
CAN ECU
十S ub Line
Stub in9
Stub LineSs
CANH
CANL
CAN ECU
수 Stub Line
Main Line
Embedded System Lab

## Page 36

CAN Network
Passive star topology
ECU 1
(terminated)
ECU 4
ECU 2
ECU 3
-36-
ECU 5
ECU 6
ECU 8
ECU 7
(Terminated)
Embedded System Lab

## Page 37

CAN Network
Passive star topology
ECU
2.0111
<Horii>
-37-
Tx
4.0111
5.5m
2.0111
5.5m
Junct1011
ECU
Junct1011
Z=Zdn[Q]
Gateway ECU
Twisted-pmr CabIe
4= 120Q
r<0
r= 1
Non-Termmal ECU
10- 100kQ

## Page 38

CAN Network
An unshielded twisted two-wire line
physical transmission medium used most frequently in
applications
Max data rate: 1 Mbit/s
Max network extension: about 40 meters
Bus termination resistors contribute tO preventing
transient phenomena (reflections).
Max number of CAN nodes: 32
By 慘0 11898
Embedded System Lab

## Page 39

6) Data-Rate/Bus-Length RatiO in CAN Network
1000
500
100
50
20
10
10
30
<WiIfred Voss>
-39-
20
60
50
150
100
300
200
600
500
1500
1000
3000
2000
6000
5000 m
15000 ft
Embedded System Lab

## Page 40

CAN PHYSICAL LAYER
-40-
Embedded System Lab

## Page 41

CAN lnterface
CAN interface
CAN controller
CAN transceiver
ECU
-41-
MCU
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 42

CAN ECU
Common CAN controller to
high speed CAN 대S CAN)
low speed CAN (LS CAN)
single wire CAN (SW CAN)
MCU
1
Core
CAN ControIler
CAN
Transceiver
ECU
Embedded System Lab

## Page 43

CAN ECU
CAN PhysicaI Layer Standards
High speed CAN physical layer (慘0 11898-2)
LOW speed CAN physical layer (慘0 11898-3)
Single wire CAN physical layer (SAE J2411)
MCU
Core
CAN ControIler
CAN
Transceiver
ECU
1
Embedded System Lab

## Page 44

㉦
CAN PhYSiCaI Layer Standards
A - HIGH SPEED
B - FAULT TOLERANT
C - SINGLE WIRE
(AU5790)
譬薦薯
Bus VoItage
Bus VoItage
Bus VoItage
기5
Recessive
CAN_H
CAN L
ReceSSlVe
5
4
1
0
Dominant
Recessive
Dominant
CAN_L
CAN_H
ReceSSIve
5
4
0
Recessive
Dominant
CAN_H
Recessive
<PhiIips Semiconductor, AN2005>
Embedded System Lab

## Page 45

CAN Transceiver
High speed CAN transceiver
Two differential bus lines
" CAN high line (CANH)
CAN low line (CANL)
Node 1
High—Speed
CAN Transceiver
1200
Node 2
H1gh—Speed
CAN Transceiver
CAN H
CAN L
Node N
High-Speed
CAN Transceiver
1200
Embedded System Lab

## Page 46

CAN Transceiver
LOW Speed CAN transceiver
Two differential bus lines
" CAN high line (CANH)
CAN low line (CANL)
Node 1
Fault Tolerant
CAN Transceiver
-46-
Node 2
Fault Tolerant
CAN Transceiver
CAN H
CAN L
Node N
Fault Tolerant
CAN Transceiver
Embedded System Lab

## Page 47

-47-
CAN Transceiver
High speed CAN and Low Speed CAN
Two differential bus lines of a CAN transceiver
" CAN high line (CANH)
CAN low line (CANL)
) Determination Of logical value
• By voltage difference between CANH and CANL
Embedded System Lab

## Page 48

CAN Transceiver
SingIe wire CAN
Single wire bus line 0f a CAN transceiver
" CANH
Common Ground
Node 1
Single Wire
CAN Transceiver
Node 2
Single Wire
CAN Transce1ver
Node N
Single Wire
CAN Transceiver
CAN Bus
Load
CAN Bus
Load
CAN Bus
CAN Bus
Load
Embedded System Lab

## Page 49

CAN BUS LEVEL
-49-
Embedded System Lab

## Page 50

CAN BLIS
Transmission medium (CAN bus)
CAN high line (CANH)
CAN low line (CANL)
Core
CAN ControIIer
CAN
Transceiver
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
CANH
CANL
CANH:
CANL:
-50-
CAN High line
CAN Low line
Termination
ab

## Page 51

CAN BLIS
SignaI transmission in a 대S & LS) CAN
Transmission Of differential voltages
(differential signal transmission)
) Effectively eliminates the negative effects Of interference
voltage
MCU
CAN
Transce iver
MCU
CAN
Tra
CAN
Transce iver
CANH
CANL
CANH:
CANL:
-51-
CAN High line
CAN Low line
Termination
Lab

## Page 52

CAN BLIS
lnterference voltages in cars
Can be induced by motors, ignition systems, and switch
contacts
Embedded System Lab

## Page 53

CAN BLIS
The voltage on the CAN high line (without noise)
The voltage on the CAN low line (without noise)
If noise occurs, b0th voltages may be changed similarly
VH + AV
VL + AV
SO, the voltage difference iS the same as in no noise
(VH + AV) - (VL + AV) = VH - VL
Embedded System Lab

## Page 54

㉦ CAN Bus (High SDeed CAN, 60 11898-2]
Max data rate of 1 Mbps
500 Kbps
Termination resistors
Prevents reflections in a high-speed CAN network.
Key parameter for the bus termination resistor
Characteristic impedance Of the electrical line
120 Ohm
Embedded System Lab

## Page 55

㉦ CAN BLIS (LOW SDeed FT CAN, ISO 11898-3]
Max data rate of 125 Kbps
LOW speed CAN (慘0 11898-3)
NOt specify any bus termination resistors.
FauIt-ToIerant CAN
Designed t0 withstand
opens, shorts, and incorrect loads on one Of the CAN data lines,
) falling back tO a single data line when a fault is encountered.
TO preserve network functionality where a data line fails,
Two resistors at each ECU
Embedded System Lab

## Page 56

㉦ CAN BLIS (SingIe Wire CAN, SAE ]2411]
Max data rate of 33.3 Kbps (or 83.3 Kbps)
SingIe wire CAN (SAE J2411)
NOt specify any bus termination resistors
One resistor at each ECU
-56-
Embedded System Lab

## Page 57

CAN BLIS LeveIs
PhysicaI signal transmission in a CAN network
High-speed CAN bus interface (慘0 11898-2)
Low-speed CAN bus interface (慘0 11898-3)
Single wire CAN bus interface (SAE J2411)
-57-
Embedded System Lab

## Page 58

㉦
High-SDeed CAN BLIS LeveIs
CAN Node
CAN Node
CANH
CANL
CAN Node
Embedded System Lab

## Page 59

㉦
Single Ended
Bus Voltaoe
3.5V
2.5V
1.5V
2.OV
OV -
-59-
High-SDeed CAN BLIS LeveIs
LogicaI 1
Recessive
LogicaI 0
Dominant
LogicaI 1
Recessive
Embedded System Lab

## Page 60

㉦
High-SDeed CAN BLIS LeveIs
The voltage on the CAN high line
The voltage on the CAN low line
High•speed CAN bus interface (慘0 11898-2)
A differential voltage . VH - VL
2 VOIt logical “0" dominant
0 VOIt logical “1”, recessive
-60-
Embedded System Lab

## Page 61

㉦
Single Ended
Bus Voltaoe
3.5V
2.5V
1.5V
lhfferennal
Bus Voltaoe
5.OV
0㉦V
0.5V
-1.OV
High-SDeed CAN BLIS LeveIs
DifferenUaI mput
voltage range for
dommant State
Differentral mput
voltage range for
recesstve state
nme
LogicaI 1
Recessive
LogicaI 0
Dominant
LogicaI “1
Recessive

## Page 62

㉦
High-SDeed CAN BLIS LeveIs
A differential voltage : VH - VL
VH - VL 2 0.9 Volt logical “0”, dominant
VH - VL 0.5 Volt ) logical “1”, recessive
Embedded System Lab

## Page 63

6) Dominant and Recessive in CAN Network
Dominant
Logical 0
Recessive
Logical 1
Embedded System Lab

## Page 64

6) Dominant and Recessive in CAN Network
SUPP0se that
AII ECUs send logical “1” values t0 the CAN bus
simultaneously
Then, the resultant logical value on the CAN bus
EI
Logical 1
1
2
3
4
5
6
Embedded System Lab

## Page 65

6) Dominant and Recessive in CAN Network
SUPP0se that
ECUI and ECU3 send logical 0
while the other ECUs send logical “1” simultaneously
Then the resultant logical value on the CAN bus
Logical 0
1
2
3
4
5
6
Embedded System Lab

## Page 66

6) Dominant and Recessive in CAN Network
If one ECU sends logical “0” t0 the CAN bus
Then the logical value on the CAN bus is always 0
regardless Of logical values sent by the other ECU
)(: Don't care condition
1
-66-
2
3
4
5
6
Embedded System Lab

## Page 67

6) Dominant and Recessive in CAN Network
That is, at the same time
ECU 1 transceiver ) 3.5 volt and 1.5 volt to CAN bus lines
ECU 2 transceiver 2.5 volt and 2.5 volt to CAN bus lines
2 ECU 3 transceiver 2.5 volt and 2.5 volt to CAN bus lines
MCU
Core
CAN ControIIer
7
CAN
Transceiver
ECU 1
1.5 volt
CANH:
CANL:
-67-
ECU 2
MCU
Core
CAN ControIIer
CAN
Transceiver
0
2.5 volt
7
0
3.5 volt
CAN High line
CAN Low line
Terminatlon
CANH
CANL
2.5 volt
Core
CAN ControIIer
CAN
Transceiver
ECU 3
0
2.5 volt
2.5 volt
ab

## Page 68

6) Dominant and Recessive in CAN Network
Then
VoItages Of CAN bus lines
> 3.5 volt and 1.5 volt
MCU
Core
CAN ControIIer
CAN
Transceiver
MCU
7
Core
CAN ControIIer
CAN
Transceiver
ECU 1
CANH:
CANL:
ECU 2
7
CANH
CANL
Core
CAN ControIIer
CAN
Transceiver
들5卍ol
1
CAN High line
CAN Low line
Terminatlon
ECU 3
ab

## Page 69

6) Dominant and Recessive in CAN Network
Circuits of CAN Transceivers
-69-
are implemented such that they satisfy this rule.
Embedded System Lab

## Page 70

6)
-70-
High SDeed CAN Transceiver [NXP T]A1041]
TXD
EN
STB
WAKE
ERR
RXD
1
6
14
9
8
4
VBAT
5
LEVEL
ADAPTOR
WAKE
COMPARATOR
VI/O
VI/O
TIME-OUT
MODE
CONTROL
十
FAILURE
DETECTOR
十
WAKE-UP
DETECTOR
RXD
RECESSIVE
DETECTION
2
GND
TJA1041
TEMPERATURE
PROTECTION
DRIVER
VCC
SPLIT
VBAT
LOW POWER
RECEIVER
Vcc
NORMAL
RECEIVER
VCC VBAT
3
7
INH
13
CANH
CANL
12
SPLIT
mgu166
edded System Lab

## Page 71

㉦
TXD and 8x0 in CAN Transceiver
TxD and RxD pins
TWO pins between CAN controller and transceiver
MCU
Core
CAN ControIIer
CAN
Transceiver
-71-
MCU
Core
CAN ControIIer
TxD
RxD
CAN
Tra
Embedded System Lab

## Page 72

㉦
TXD and 8x0 in CAN Transceiver
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
MCU
Core
CAN ControIIer
CAN
Transceiver
CANH:
CANL:
CANH
CANL
CAN High line
CAN Low line
Terminatlon
Embedded System Lab

## Page 73

㉦
TXD and 8x0 in CAN Transceiver
TxD and RxD pin
MCU
Core
CAN ControIIer
MCU
Core
CAN ControIIer
MCU
TxD
CAN
Transceiver
RxD
TxD
CAN
Transceiver
RxD
Core
CAN ControIIer
TxD
CAN
Transceiver
RxD
CANH:
CANL:
CAN High line
CAN Low line
Terminatlon
CANH
CANL
Embedded System Lab

## Page 74

6)
High SDeed CAN Transceiver [NXP T]A1041]
TXD
EN
STB
WAKE
ERR
RXD
1
6
14
9
8
4
VBAT
5
LEVEL
ADAPTOR
WAKE
COMPARATOR
VI/O
VI/O
TIME-OUT
MODE
CONTROL
十
FAILURE
DETECTOR
十
WAKE-UP
DETECTOR
RXD
RECESSIVE
DETECTION
2
GND
TJA1041
TEMPERATURE
PROTECTION
DRIVER
VCC
SPLIT
VBAT
LOW POWER
RECEIVER
Vcc
NORMAL
RECEIVER
VCC VBAT
3
7
INH
13
CANH
CANL
12
SPLIT
mgu166
edded System Lab

## Page 75

㉦
CANH and CANL in CAN Transceiver
CANH and CANL pins
TWO pins between CAN transceiver and CAN bus lines
MCU
Core
CAN ControIIer
TxD
CAN
Tran
CANL
RxD
CANH
Embedded System Lab

## Page 76

6)
0
High SDeed CAN Transceiver [NXP T]A1041]
0
0
EN
STB
WAKE
ERR
1
6
14
9
8
4
VBAT
5
LEVEL
ADAPTOR
WAKE
COMPARATOR
VI/O
VI/O
TIME-OUT
MODE
CONTROL
十
FAILURE
DETECTOR
十
WAKE-UP
DETECTOR
RXD
RECESSIVE
DETECTION
2
GND
TJA1041
TEMPERATURE
PROTECTION
DRIVER
VCC
SPLIT
VBAT
LOW POWER
RECEIVER
Vcc
NORMAL
RECEIVER
VCC VBAT
3
7
INH
13
12
SPLIT
7
mgu166
edded System Lab

## Page 77

6)
High SDeed CAN Transceiver [NXP T]A1050]
: TXD
• RXD
Vref
-77-
8
200
1
4
GND
5
30gA
GND
TXD
DOMINANT
TIME-OUT
TIMER
REFERENCE
VOLTAGE
TEMPERATURE
PROTECTION
DRIVER
RECEIVER
TJA1050
3
O.5Vcc
7
25
25
GND
6
2
MGS374
GND
CANH
CANL
System Lab

## Page 78

200
GND
Vref
CAN ECU
30FIA
GND
TXD
DOMINANT
TIME-OUT
TIMER
REFERENCE
VOLTAGE
TEMPERATURE
PROTECTION
DRIVER
O.5Vcc
RECEIVER
25
25
GND
TJA1050
MG$374
GND
Embedded

## Page 79

3.3V CAN Transceiver
High speed CAN bus level in 3.3V CAN transceiver
LogicaI 0
Dominant
=3V
LogicaI 1
Recessive
~2.3V
V이CANH)
V이CANL)
Embedded System Lab

## Page 80

6) LOW-SDeed [Fault-ToIerant) CAN BLIS LeveIs
5.OV
CAN H
CAN L
LogicaI 1
ReceSSlve
-80-
3.6V
CAN L
CAN H
1 4 `7
LogicaI “0'
Dominant
Embedded System Lab

## Page 81

㉦
Low-SDeed CAN BLIS LeveIs
Low•speed bus interface (慘0 11898-3)
A differential voltage : VH - VL
" VH - VL = 2 VOIt logical “0”, dominant
H
L
-81-
- 5 VOIt logical “1”, recessive
Embedded System Lab

## Page 82

㉦
Low-SDeed CAN BLIS LeveIs
A differential voltage : VH - VL
VH - VL > 0 Volt logical “0”, dominant
VH - VL < 0 Volt logical “1”, recessive
Embedded System Lab

## Page 83

LOW-SDeed CAN Transceiver
(ON Semiconductor AMIS-4168x)
INH
WAKE
STB
EN
TxD
GND
ERR
RxD
1
7
5
6
Vcc (가
VBAT
14
Mode &
wake-up
control
Thermal
shutdown
Receiver
VCC
10
POR
Dnver
control
Filter
04)
4
AMIS—4168)(
•9
1
1
RTL •
CANH
CANL
RTH :
13
4
3
Failure
handling
led System Lab

## Page 84

CAN Transceiver
LOW Speed CAN transceiver
Node 1
Fault Tolerant
CAN Transceiver
Node 2
Fault Tolerant
CAN Transceiver
CAN H
CAN L
Node N
Fault Tolerant
CAN Transceiver
Embedded System Lab

## Page 85

㉦
CAN Bus
SingIe Wire CAN BLIS LeveIs
Recessive
4.0\/
Dominant
0.1 V
Recessive
Embedded System Lab

## Page 86

㉦
SingIe Wire CAN BLIS LeveIs
SingIe wire CAN bus interface (SAE J2411)
VH = 4.0 Volt logical “0”, dominant
VH = 0.1 Volt logical “1”, recessive
-86-
Embedded System Lab

## Page 87

㉦
-87-
SingIe Wire CAN BLIS LeveIs
VH 2 3.4 VoIt logical “0”
dominant
VH 1.6 VoIt logical “1”
, recesslve
Embedded System Lab

## Page 88

6)
Singe Wire Transceiver (NXP AU5790]
NSTB
(M0de 0)
MODE
CONTROL
(MOde 1)
BATTERY (+12`7)
BAT
VOLTAGE
REFERENCE
GND
TEMP.
PROTECTION
OUTPUT
BUFFER
RECEIVER
LOSS OF
GROUND
PROTECTION
AU5790
CANH
(BUS)
RTH
(LOAD)
mbedded System Lab

## Page 89

TWISTED PAIR
-89-
Embedded System Lab

## Page 90

Crosstalk
-90-
Crosstalk
Embedded System Lab

## Page 91

ShieIded CabIe
Can reduce
electrical noise interference
electromagnetic emission
crosstalk between cables near each other
Expensive
-91-
mbedded System Lab

## Page 92

UnshieIded CabIe
Less robust than shielded cable
Cheaper than shielded cable
ded System Lab

## Page 93

UnshieIded TwiSt Pair
Twisting wires in differential transmissions
can reduce
Electrical noise interference
Electromagnetic emission
more than untwisting wires dO
Embedded System Lab

## Page 94

Twisted Pair
The voltage on the CAN high line (without noise)
The voltage on the CAN low line (without noise)
If noise OCCurs in twisted pair,
itS effect iS similar on tWO wires
i.e. bOth voltages may be changed similarly
> VH + AV (rather than VH)
> VL + AV (rather than VL)
SO, the voltage difference iS the same as in no noise
(VH + AV) - (VL + AV) = VH - VL
Embedded System Lab

## Page 95

Twisted Pair
Number Of wraps in twisted pair
At least 30 wraps per meter
Embedded System Lab

## Page 96

MCU
Core
CAN ControIIer
CAN
Transceiver
CAN BLIS
MCU
Core
CAN ControIIer
CAN
Transceiver
CANH:
CANL:
-96-
CAN High line
CAN Low line
Terminatlon
MCU
Core
CAN ControIIer
CAN
Transceiver
CANH
CANL
Embedded System Lab

## Page 97

MCU
Core
CAN ControIIer
CAN
Transceiver
CAN BLIS
MCU
Core
CAN ControIIer
CAN
Transceiver
CANH:
CANL:
-97-
CANH
CANL
CAN High line
CAN LO`쇔 line
Terminatlon
MCU
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 98

CAN Network
An unshielded twisted two-wire line
Less robust to noise than shielded lines
Cheaper than shielded lines
PhysicaI transmission medium used most frequently
Embedded System Lab

## Page 99

TERMINATION
-99-
Embedded System Lab

## Page 100

CAN Network
Bus topology
Termination resistors
" Preventing transient phenomena (reflections)
CANH:
CANL:
-100-
ECU
CAN High line
CAN LOW line
Terminatlon
ECU
ECU
CANH
CANL
Embedded System Lab

## Page 101

CAN Network
Passive star topology
Termination resistors
ln main line ONLY
Stub Line
ECU
ECU
CANH
CANL
Stub Line
Main Line
CANH:
CANL:
CAN Htgh line
CAN LOW line
TermInatIon
-101-
Embedded System Lab

## Page 102

CAN Network
With termination resistors
Sending a signal at A
ECU
CANH:
CANL:
-102-
ECU
CAN High line
CAN LOW line
Terminatlon
ECU
CANH
CANL
Embedded System Lab

## Page 103

CAN Network
With termination resistors
The same shape OCCurs at B
CANH:
CANL:
-103-
ECU
CAN High line
CAN LOW line
Terminatlon
ECU
CANH
CANL
ECU
Embedded System Lab

## Page 104

CAN Network
Without termination resistors,
ECU
CAN High line
CAN LOW line
ECU
CANH
CANL
CANH:
CANL:
-104-
ECU
Embedded System Lab

## Page 105

CAN Network
EI Without termination resistors
Because Of reflection, a distorted at B
CANH:
CANL:
-105-
ECU
CAN High line
CAN LO`솊 line
ECU
CANH
CANL
ECU
I System Lab

## Page 106

Termination
For preventing the reflection,
high-Speed CAN networks must be terminated with the
characteristic impedance Of the physical transmission medium
Characteristic impedance Of the physical transmission
EI
medium
120 Ohm
-106-
Embedded System Lab

## Page 107

MCU
Core
CAN ControIIer
CAN
Transceiver
CAN BLIS
MCU
Core
CAN ControIIer
CAN
Transceiver
CANH:
CANL:
-107-
CANH
CANL
CAN High line
CAN LO`쇔 line
Terminatlon
MCU
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 108

ECU
SDIit Bus Termination
ECU
CANH
CANL
Low- filterwrth f
1
2 7t RC L
-108-
ECU
Embedded System Lab

## Page 109

-109-
SDIit Bus Termination
A split bus termination
two identical resistors (~60 0 士 10/0 )
one capacitor (typically 4.7 nF for high speed CAN)
) Acts like a low-pass filter
can improve noise immunity and reduce emissions
Embedded System Lab

## Page 110

6) SDlit Pin inA High SDeed Transceiver
Some high speed transceivers have a SPLIT pin
StabiIization Of the recessive voltage level on the bus
Reduce electromagnetic emission in networks
-110-
Embedded System Lab

## Page 111

6)
SDlit Pin in A High SDeed Transceiver
VSPLIT = 0.5 Vcc
in normal mode
otherwise floating
-111•
Vcc
TJA1042T
GND
CANH
60 (그
SPLIT
CANL
075aaa020
.. Lab

## Page 112

High SDeed CAN
Termination with with the characteristic impedance Of
the physical transmission medium
Characteristic impedance: 120 Ohm
Max data rate: 1Mbps (500 Kbps)
ECU
1
High—Speed
CAN Transceiver
1200
-112-
ECU
H1gh-Speed
CAN Transceiver
CAN H
CAN L
ECU
High-Speed
CAN Transce1ver
1200
Embedded System Lab

## Page 113

㉦
-113-
LOW SDeed (FauIt ToIerant) CAN
OveraII RTH : 100 - 500 0
lndividual RTH : 500 - 16K0
Max data rate: 125Kbps
Node 1
Node 2
Fault Tolerant
Fault Tolerant
CAN Transceiver
CAN Transceiver
로
로
CAN H
CAN L
Node N
Fault Tolerant
CAN Transcejver
Embedded System Lab

## Page 114

SingIe Wire CAN
RTH : 9.09 KQ
NormaI data rate: 33.3 Kbps
83.3 Kbps diagnostic mode
Node 1
SingIe Wire
CAN Transceiver
Node 2
SingIe Wire
CAN Transceiver
Node N
SingIe Wire
CAN Transceiver
CAN Bus
-11.
Load
CAN Bus
Load
CAN Bus
CAN Bus
Load

## Page 115

BIT CODING
-115-
Embedded System Lab

## Page 116

Bit Coding
Bit coding
Logical “0” and “1” which physical voltages?
-116-
Embedded System Lab

## Page 117

Bit Coding
Bit coding must be able t0
reduce radiated emissions significantly
be also harmonized with a required capacity
-117-
Embedded System Lab

## Page 118

Bit Coding
RZ(Return t0 Zero) C0ding
NRZ (Non Return t0 Zero) coding
-118-
Embedded System Lab

## Page 119

Bit Coding
RZ(Return t0 Zero) C0ding
The signal drops (returns) t0 zero btw each pulse
Self-cIocking
-119-
Embedded System Lab

## Page 120

Bit Coding
One example 0f RZ coding
Logical “1”
Logical “0”
-120-
0
0
Embedded System Lab

## Page 121

Bit Coding
One example 0f RZ coding
11010010
-121-
Embedded System Lab

## Page 122

Bit Coding
One example 0f RZ coding
11010010
-122-
Embedded System Lab

## Page 123

Bit Coding
NRZ (Non Return t0 Zero) coding
Logical '1' by one condition
Logical '0' by the other condition
No other neutral or rest condition
N0t self-clocking
-123-
Embedded System Lab

## Page 124

Bit Coding in CAN
CAN
NRZ bit coding
Binary signals t0 be transmitted are mapped directly
Logical “1” t0 a high level
Logical “0” t0 a low level
Logical Bus Level
NRZ C0ding
-124-
Embedded System Lab

## Page 125

㉦
Sender
-125-
Sending A CAN Data Frame
MCU
Core
CAN ControlIer
CAN
Transceiver
1
data
Header data
01 1 0.
OV 5V 5V OV .
3.5V 2.5V 2.5V
TaiI
3.5V .
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Receiver
1.5V 2.5V 2.5V 1.5V .
Embedded System Lab

## Page 126

NRZ Coding
Advantage
Consecutive bits Of the same polarity exhibit no level changes
" Very high data rates
Emissions within limits
Disadvantage
N0t self-clocking,
• NRZ does not have any synchronization properties
If no level change occurs over a longer period Of time,
> the receiver may lose synchronization
NRZ coding requires an explicit synch mechanism
which reduces transmission efficiency
-126-
Embedded System Lab

## Page 127

-127-
NRZ Coding in CAN
Synchronization mechanism in CAN (of NRZ coding)
bit stuffing method
Bit stuffing method
After five homogeneous bits,
the sender inserts a complementary bit in the bit stream
Embedded System Lab

## Page 128

NRZ Coding in CAN
Bit stuffing method
Example 1
" SUPPOSe one CAN controller wants tO send
0000001 .
1 2 3 4 5
2 Then it will send
00000 1 01 .
-128-
Embedded System Lab

## Page 129

NRZ Coding in CAN
Bit stuffing method
Example 2
" SUPPOSe one CAN controller wants tO send
1 2 3 4 5
1 2 3 4 5
00000001111100 .
Then it will send
00000 1 0011111 0 00 .
-129-
Embedded System Lab

## Page 130

NRZ Coding in CAN
Bit stuffing method
Example 3
" SUPPOSe one CAN controller wants tO send
1 2 3 4 5
.. 0000011110000110 .
Then it will send
.. 000001 1111 00000 1 110.
-130-
Embedded System Lab

## Page 131

CAN IDENTIFIER
-131-
Embedded System Lab

## Page 132

㉦
-132-
ldentifier in CAN Data Frame
CAN data frame
Header
ldentifier
data
data
TaiI
TaiI
Not the destination of CAN frame
But describes the meaning Of the data
e.g. Engine rpm, Engine temperature, Transmission stage,
Embedded System Lab

## Page 133

㉦
ldentifier in CAN Data Frame
CAN frame contains
NOT address
BUT identifier
-133-
Embedded System Lab

## Page 134

㉦
-134-
ldentifier in CAN Data Frame
Message routing
The meaning 0f a message is marked by an identifier.
" So, each ECU can decide
whether or not the message carried on the bus is relevant tO it
by acceptance filtering
System flexibility
ln a CAN network,
an ECU does not have to consider
information relating tO the configuration Of the system
Embedded System Lab

## Page 135

ExamDIe Of One ldentifier
A CAN network
12 ECUs in 5 groups
17 sensors in ECUI
Group A
Group B
Group C Group D
SL.lPPOse that ECUI sends one CAN data frame
containing one sensor value connected tO ECUI
data
-135-
TaiI
Group E
Embedded System Lab

## Page 136

ExamDIe Of One ldentifier
A CAN network
12 ECUs in 5 groups
17 sensors in ECUI
Group A
llbits of identifier
Which group?
3 bits
-136-
Group B
data
Group C Group D
TaiI
Group E
Which ECU?
3 bits
Which sensor?
5 bits
Embedded System Lab

## Page 137

CAN COMMUNICATION
-137-
Embedded System Lab

## Page 138

TYDes Of Communication
Unicast
MuIticast
Broadcast
-138-
Embedded System Lab

## Page 139

Unicast
A frame is sent from one ECU to another ECU.
One sender and one receiver
-139-
0
0
Embedded System Lab

## Page 140

-140-
Multicast
A frame is sent from one ECU to several ECUs
One sender and muti (several) receivers
0
0
Embedded System Lab

## Page 141

-141-
Broadcast
A frame is sent from one ECU to of the other ECUs
One sender and (of the other) receivers
0
Embedded System Lab

## Page 142

parcel DeIivery
EV One sender & one receiver
Sender determines itS corresponding receiver by an address
" Unicast
-142-
Embedded System Lab

## Page 143

CAN Data frame DeIivery
EI
One sender & (maybe) several receivers
A frame can be used t0 address a group 0f ECU simultaneously
• MuIticast
-143-
Embedded System Lab

## Page 144

㉦
CAN Communication PrinciDIe
One CAN frame
Does NOT include its destination address
BUT includes one identifier (ID) instead Of address
Sender
Does NOT determine itS corresponding receiver
Embedded System Lab

## Page 145

㉦
CAN Communication PrinciDIe
BIock diagram 0f CAN controller
MCU
Core
CAN Controller
CAN
Transceiver
Core
TX Buffer
CAN ControIIer
Send
MCU
RX Buffer
Acceptance
FiItering
Receive
CAN
Transceiver
ECU
-145-
ECU
Embedded System Lab

## Page 146

㉦
CAN Communication PrinciDIe
One CAN network
MCU
CAN
Transceiver
ECU 1
CAN
Transceiver
CAN ControIler
Core
ECU 3
-146-
MCU
CAN
ECU2 Transceiver
CAN
Transceiver
CAN Controller
Core
ECU 4
Embedded System Lab

## Page 147

㉦
CAN Communication PrinciDIe
One CAN network
MCU
Core
Acceptance I
CAN ControIIer
FiItering
ECU 1
Acceptance
CAN ControIIer
FiItering
Core
ECU 3
-147-
MCU
Core
CAN ControIIer
Send
ECU 2
Acceptance
FiItering
Receive
Acceptance
CAN ControIIer
FiItering
Core
ECU 4
Embedded System Lab

## Page 148

ExamDIe 1
SUPP0se that ECUI sends one data frame of ID=Ox IA.
ID= (000 0001 1010) 2
-148-
Embedded System Lab

## Page 149

ExamDIe 1 [Unicast)
Sender
ECUI sends one data frame of lD=Ox IA
ID = (000 0001 1010) 2
Receiver
ECU2 will extract the information of the data frame
1
-149-
2
Embedded System Lab

## Page 150

ExamDIe 2
SUPP0se that ECU2 sends one data frame of ID=Ox 3C.
ID= (000 0011 1100)2
-150-
Embedded System Lab

## Page 151

ExamDIe 2 [MuIticast)
Sender
ECU2 sends one data frame of lD=Ox 3C
ID = (000 0011 1100)2
Receiver
ECUI and ECU4 will extract the information
1
-151-
2
4
Embedded System Lab

## Page 152

ExamDIe 3
SUPP0se that ECU3 sends one data frame of ID = 0x7A1.
ID = (111 1010 0001)2
-152-
Embedded System Lab

## Page 153

ExamDIe 3 [Broadcast)
Sender
ECU3 sends one data frame of lD=Ox 7A1
Receiver
AII ECUs (ECUI, ECU2, and ECU4) will extract the information
1
-153-
2
3
4
Embedded System Lab

## Page 154

㉦
-154-
CAN Communication PrinciDIe
Receiver-selective method
Sender does NOT know its corresponding receiver
Embedded System Lab

## Page 155

㉦
CAN Communication PrinciDIe
Receiver-selective method
Other ECUs (except sender) will determine
the extraction of information
depending on ID & acceptance filtering
2
1
-155-
4
5
Embedded System Lab

## Page 156

㉦
Receiver SeIective Method
lncrease configuration flexibility
-156-
Embedded System Lab

## Page 157

㉦
Receiver SeIective Method
lncrease configuration flexibility
lntegration of ECU 4
without modification Of existing ECUI, ECU2, and ECU3
1
-157-
2
3
4
Embedded System Lab

## Page 158

CSMA/CR
-158-
Embedded System Lab

## Page 159

㉦
-159-
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Embedded System Lab

## Page 160

㉦
Media Access ControI in CAN
MuIti master
Each ECU has the right t0 access the CAN bus
without requiring permission
without prior coordination with other CAN ECUs
Decentralized bus access
-160-
Embedded System Lab

## Page 161

㉦
Media Access ControI in CAN
"Free” (or "ldle”) bus
NO frame is being sent now on the CAN bus
Any ECU can start its transmission now.
-161-
Embedded System Lab

## Page 162

㉦
-162-
Media Access ControI in CAN
"Busy” bus
One frame iS being sent now
" No ECU can start its transmission at this moment.
2 After the current transmission iS over and itS interframe space,
it is allowed for some ECU to start to send its frame.
Embedded System Lab

## Page 163

㉦
-163-
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Carrier Sense
If one ECU wants to send one frame,
it must check whether the bus is "free
If the bus is "free”, this ECU can start to send its frame
Embedded System Lab

## Page 164

㉦
-164-
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Carrier Sense
If one ECU wants to send one frame,
it must check whether the bus is "free
If the bus is "free”, this ECU can start to send its frame
2 Otherwise (i.e. bus is "bUSY"), this ECU must wait
until the current transmission and itS interframe space are over.
Embedded System Lab

## Page 165

㉦
-165-
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
There exist 6 ECUs on a CAN bus
우후후후우후
Embedded System Lab

## Page 166

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
One frame starts to be sent from 띠.
우후구후우우
Current CAN frame
-166-
time
Embedded System Lab

## Page 167

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
One frame starts to be sent from 띠.
ECUI wants to send its frame at t3.
> Then it needs tO listen the shared medium before starting tO send it.
Carrier sense
> Because the CAN bus is busy at 더,
ECUI cannot start tO send its frame immediately
Current CAN frame
3
IFS
1
-167-
time
Embedded System Lab

## Page 168

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
One frame starts to be sent from 띠.
ECUI wants to send its frame at t3.
> ECUI cannot start to send it until the CAN bus is free.
> This occurs after the interframe space expires.
ECUI monitors the CAN bus (Carrier Sense) tO detect this.
> ECU 1 must wait until t2
1 Carrier sense by ECUI
1
-168-
Current CAN frame IFS
3
time
Embedded System Lab

## Page 169

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
One frame starts to be sent from 띠.
ECUI wants to send its frame at t3.
> lt must wait until t2
2 ECU3 wants tO send its frame at t4. (tl < t3 < t4 < t2 )
> lt must wait until t2
Carrier sense by ECUI
0㉦
Carrier sense by ECU3
Current CAN frame IFS
1
-169-
3
time
Embedded System Lab

## Page 170

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
S1-1PPOSe
One frame starts to be sent from 띠.
ECUI wants to send its frame at t3.
> lt must wait until t2
2 ECU3 wants to send its frame at t4.
> lt must wait until t2
ECU4 wants tO send its frame at t5. (tl < t3 < t4 < t5 < t2 )
> lt must wait until t2
Carrier sense by ECU4
Carrier sense by ECU3
Carrier sense by ECUI
IFS
1
-170-
Current CAN frame
3
time
Embedded System Lab

## Page 171

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
" More than one ECU may start tO send their frames simultaneously.
Then, at t2
ECUI, ECU3, and ECU4 start tO send their frames simultaneously.
후후후후후우
> Collision OCCL.lß!
Current CAN frame
1
3
-171-
1
3
IFS
4
time
Embedded System Lab

## Page 172

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
At t2,
ECUI, ECU3, and ECU4 start tO send their frames simultaneously.
> Collision OCCL.lß!
Suppose ID3 < IDI and lD3 < lD4 (numerically).
• Then frame3 has higher priority than framel and frame4.
1
IDI
framel
-172-
2
3
ID3
frame3
4
ID4
fra e4
5
6
Embedded System Lab

## Page 173

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Then, frame3 will be sent
That is,
> ECU3 will gain access tO the bus and transmit its frame
> ECUI and ECU4 will relinquish tO send
and wait after the frame3 transmission iS over and
the next interframe space expires.
1
-173-
2
3
ID3
frame3
4
5
6
Embedded System Lab

## Page 174

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
ECU3 can start to send frame3 at t2
ECUI and ECU 4 must wait their transmissions until t6
> ThiS OCCUÆ after the next inter frame space expires.
> ECUI and ECU4 monitor the CAN bus (Carrier Sense) tO detect this.
Carrier sense by ECU 4
Carrier sense by ECU 1
IFS Frame3 by ECU3 IFS
Current CAN frame
1
3
-174-
- time
Embedded System Lab

## Page 175

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
SUPP0se that
no other ECUs want to send their frames from t2 to t6
(except ECUI and ECU4 )
Carrier sense by ECU 4
Carrier sense by ECU 1
IFS Frame3 by ECU3 IFS
Current CAN frame
1
3
-175-
- time
Embedded System Lab

## Page 176

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Then, at t6
ECUI and ECU4 start tO send their frames simultaneously.
> Collision OCCL.lß!
Current CAN frame
1
3
-176-
IFS Frame3 by ECU 3
1
IFS
- time
Embedded System Lab

## Page 177

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
At t6,
ECUI and ECU4 start tO send their frames simultaneously.
> Collision OCCL.lß!
Suppose ID4 < IDI (numerically).
• Then frame4 has higher priority than framel.
1
IDI
framel
2
3
4
ID4
fra e4
5
6
Embedded System Lab

## Page 178

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
Then, frame4 will be sent
That is,
> ECU4 will gain access tO the bus and transmit its frame
> ECUI will relinquish tO send
and wait after the frame4 transmission iS over and
the next interframe space expires.
1
-178-
2
3
4
ID4
fra e4
5
6
Embedded System Lab

## Page 179

㉦
Media Access ControI in CAN
CSMNCR
Carrier Sense MuItiple Access/COIIision Resolution
ECU4 can start to send frame4 at t6
ECUI must wait its transmissions
after the next inter frame space expires.
> ECUI monitor the CAN bus (Carrier Sense) tO detect this.
Current CAN frame
1
3
-179-
IFS Frame3 by ECU 3
IFS
Carrier sense by ECU 1
Frame4 by ECU4 IFS
Embedded System Lab

## Page 180

PRIORITY OF CAN FRAME
-180-
Embedded System Lab

## Page 181

PrioritY Of CAN Frame
The identifier defines a static priority Of one frame.
(Numerically) Lower identifier, higher priority
-181-
Embedded System Lab

## Page 182

PrioritY Of CAN Frame
SUPP0se ECUI, ECU3, and ECU4
start tO send their frames simultaneously.
IDI = (0101111 0101)2
lD3 = (010 1100 1101) 2
lD4 = (011 0011 0001) 2
1
IDI
framel
-182-
2
3
ID3
frame3
4
ID4
fra e4
5
6
Embedded System Lab

## Page 183

PrioritY Of CAN Frame
SUPP0se ECUI, ECU3, and ECU4
start tO send their frames simultaneously.
IDI = (0101111 0101)2
lD3 = (010 1100 1101) 2
lD4 = (011 0011 0001) 2
NumericaIIy, ID3 is the lower than IDI and ID4
> The priority Of frame3 is the higher
) ECU3 is the winner.
1
-183-
2
3
ID3
frame3
4
5
6
Embedded System Lab

## Page 184

ConceDt Of Bus Access
MuIti-master architecture
Each ECU in the CAN network has the right t0 access the CAN
bus
without requiring permission
~ without prior coordination with other CAN ECUs
More than one ECU may access the CAN bus simultaneously.
• That is, more than one ECU may start tO send their frames
simultaneously.
-184-
Embedded System Lab

## Page 185

ConceDt Of Bus Access
EV ln case Of simultaneous bus access,
Highest priority CAN frame will be sent
The higher the priority 0f a CAN frame, the sooner it
can be transmitted on the CAN bus.
ln case 0f poor system design, IOW priority CAN frames
even run the risk Of never being transmitted.
-185-
Embedded System Lab

## Page 186

ConceDt Of Bus Access
Arbitration
Selection of one ECU which will start to send its frame
in case Of simultaneous bus access
Bitwise arbitration
-186-
Embedded System Lab

## Page 187

CAN FRAME TYPES
-187-
Embedded System Lab

## Page 188

Message Transfer
Data frames
Remote frames
Error frames
OverIoad frames
-188-
Embedded System Lab

## Page 189

Message Transfer
Data frames
Transport the data (i.e. information) from one sender
tO receivers
Header
-189-
data
TaiI
Embedded System Lab

## Page 190

Message transfer
Remote frames
Sent by an ECU active on the bus
TO request the transmission Of a data frame
whose identifier has the same value as that of the remote frame
NO data (i.e. information) are included in remote frames
Header
-190-
TaiI
Embedded System Lab

## Page 191

Message transfer
EV Error frames
Transmitted by any ECU present on the bus
as soon as an error iS detected on the bus
Active & passive error frames
-191-
Embedded System Lab

## Page 192

Message transfer
EV Error frames
Transmitted by any ECU present on the bus
as soon as an error iS detected on the bus
Active & passive error frames
Active error frame
Active error flag
-192-
Error delimiter
11111111
Embedded System Lab

## Page 193

Message transfer
EV Error frames
Transmitted by any ECU present on the bus
as soon as an error iS detected on the bus
Active & passive error frames
Passive error frame
Passive error flag
1 11 1 1 1
-193-
1
Error delimiter
1111111
Embedded System Lab

## Page 194

Message transfer
OverIoad frames
TO request a supplementary time interval
between the preceding and following frames
OverIoad frame
0 0 0 0 0 0 1 1 1 1 1 1 1 1
-194-
Embedded System Lab

## Page 195

Message transfer
lnterframe space (IFS)
Separate in time {the current frame}
from {the preceding frame}
Minimum 3bits in CAN
The 1St frame
-195-
IFS
The 2nd frame
IFS
The 3rd frame
IFS
Embedded System Lab

## Page 196

BIT STUFFING
-196-
Embedded System Lab

## Page 197

-197-
Bit stuffing
After 5 bits of identical value
DeIiberately introduce (at the transmission ECU)
one additional opposite value bit
t0 'break the rhythm
Embedded System Lab

## Page 198

㉦
ECU
-198-
Sending A CAN Data Frame
MCU
Core
CAN ControlIer
CAN
Transceiver
1
Header
MCU
Core
CAN ControlIer
CAN
Transceiver
1
data
data
TaiI
ECU
Embedded System Lab

## Page 199

Bit stuffing
Frame tO be transmitted, before stuffing
1 2 3 | 4 5 6 7 8 1 9
1 1 0 0 0 0 0 0 1
Frame with stuffing
| 12 3 4 5 6 7 S 8 9
1 1 00000 1 0 1
“1
10 0 0 0 0 1 0 1”willbetransmitted.
-199-
Embedded System Lab

## Page 200

-200-
Bit stuffing
Frame tO be transmitted, before stuffing
1 2 3 | 4 5 6 7 8 1 9
Frame with stuffing
| 12 J 3 4 5 6 | 7 S 1 8 9
Frame destuffed on reception
1 1 0 0 0 0 0 0 1
Embedded System Lab

## Page 201

Range Of Bit stuffing
ln data frames and remote frames
data frame
Header
remote frame
Bit stuffing range
Header
-201-
Bit stuffing range
data
TaiI
TaiI
Embedded System Lab

## Page 202

Range Of Bit stuffing
Arbitration field
ldentifier
Stored in buffers
-202-
Control field
Data frame
N(0로N로8)
Data field
Stored in transmit]receve buffers
Bit stuffing
(mmber Of bits = 44 + 8N)
CRC field
0R0
Endof frame
Embedded System Lab

## Page 203

Range Of Bit stuffing
(ln data frames and remote frames)
Range 0f bit stuffing
" Start of frame (SOF), arbitration field, control field, data field,
CRC sequence
NO bit stuffing
CRC delimiter, ACK slot, ACK delimiter, End Of frame (EOF)
Data frame
SOF
-203-
ID
RTR
rl
ControI FieId
rO
DLC
Bit Stuffing
CRC CRC ACK AC
Data
Sequence DeI SIot DeI
-그
EOF
Embedded System Lab

## Page 204

Bit stuffing
Error and overload frames
fixed structures
" NO bit stuffing
-204-
Embedded System Lab

## Page 205

PurDose Of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization Of communication partners
-205-
Embedded System Lab

## Page 206

PurDose Of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization Of communication partners
Disadvantage Of NRZ coding
Not self-clocking,
NRZ does not have any synchronization properties
If no level change occurs over a longer period Of time,
> the receiver may lose synchronization
-206-
Embedded System Lab

## Page 207

-207-
PurDose Of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization Of communication partners
Disadvantage Of NRZ coding
Not self-clocking,
NRZ does not have any synchronization properties
If no level change occurs over a longer period Of time,
> the receiver may lose synchronization
SO, bit stuffing is necessary for resynchronization
Embedded System Lab

## Page 208

PurDose Of Bit stuffing
Resynchronization
Only OCCur on recessive•to•dominant edges.
Bit stuffing
Max 10 bits between resynchronization
Synchronization
Edge
1
1
0
-208-
0
1
0 0 0
Bit
Time
1
1
0
Embedded System Lab

## Page 209

㉦
Max Number Of Bit Stuffing
Because 0f bit stuffing (from SOF to CRC sequence)
Max number of stuff bits
in a standard data frame 0f 8 byte data field
24 bits
The theoretically longest standard data frame
132 bit
-209-
Embedded System Lab

## Page 210

-210-
STANDARD DATA FRAME IN CAN
Embedded System Lab

## Page 211

Standard Data frame
SOF
-211-
ID
Header
RTR
rl
Control FieId
rO
DLC
TaiI
CRC CRC ACK AC
Data
Sequence DeI SIOt DeI
EOF
Embedded System Lab

## Page 212

Start 0f Frame [SOF)
A single dominant bit
Signaling t0 all receivers the start 0f an exchange
SOF
1 bit
-212-
data
EOF
Embedded System Lab

## Page 213

Start 0f Frame [SOF)
A falling edge
from the previous recessive (bus idle) level
tO the dominant level (SOF)
is used tO synchronize the entire network
Before SOF
LogicaI 1
FaIIing edge
-213-
LO
SOF
ical 0
Embedded System Lab

## Page 214

Start Of Frame [SOF)
AII ECUs (except the sender)
must be fully synchronized with each other
before the start bit can pass
with using the falling edge
1
-214-
2
3
4
5
6
Embedded System Lab

## Page 215

Standard Data frame
Arbitration field
Arbitration
field
SOF
ID
RTR
1 bit
Data
11 bits
-215-
EOF
Embedded System Lab

## Page 216

-216-
Arbitration Field
EV When collision OCCurs,
one CAN frame will be selected by the arbitration field
Arbitration field
ldentifier bits (ID)
Sets the priority Of the data frame
RTR (remote transmission request) bit
The higher priority Of the data frame
than its corresponding remote frame with the same ID
Embedded System Lab

## Page 217

ldentifier
Describes the meaning Of the data
e.g. Engine rpm, Engine temperature, Transmission stage,
data
Acceptance filtering
Receiver-selective
TaiI
Sets the priority 0f the data frame
-217-
Embedded System Lab

## Page 218

ldentifier
ID sets the priority 0f the data frame
11 bits
Transmitting from ID_IO (MSB) to ID_O (LSB)
7 most significant bits(From ID_IO to lD_4) must not be
recesslve
ID= 11 11 11 1)( )0()(
ldentifier
SOF IDIO
MSB
-218-
ID9
ID8
ID7
ID6
ID5 ID4
ID3
ID2
IDI
IDO RTR
LSB
Embedded System Lab

## Page 219

ldentifier
ID sets the priority 0f the data frame
11 bits
Transmitting from ID_IO to ID_O (least significant)
7 most significant bits(From ID_IO to lD_4) must not be
recesslve
ID= 11 11 11 1)( )0()(
The max combinations:
211 - 24 = 2048 - 16 = 2032
-219-
Embedded System Lab

## Page 220

RTR Bit
Remote transmission request
RTR bit is used by the sender
tO inform receivers Of the frame type
data frame or remote frame
-220-
Embedded System Lab

## Page 221

-221-
RTR Bit
Remote transmission request
RTR bit is used by the sender
tO inform receivers Of the frame type
data frame or remote frame
ln a data frame,
Dominant RTR bit
RTR = “0” (dominant) "false"
NO request for remote transmission data frame
Embedded System Lab

## Page 222

RTR Bit
Remote transmission request
RTR bit is used by the sender
tO inform receivers Of the frame type
data frame or remote frame
ln a remote frame,
Recessive RTR bit
RTR = “1” (recessive) "true"
Request for remote transmission remote frame
Embedded System Lab

## Page 223

-223-
Arbitration
SUPP0se ECU2, ECU3, and ECU4 start to
send their frames simultaneously.
14로\
Embedded System Lab

## Page 224

Arbitration
SUPP0se ECU2, ECU3, and ECU4 start to
send their frames simultaneously.
lD2 = 101 1110 0011, RTR=O (dataframe)
lD3 = 101 0100 0100, RTR=I (remoteframe)
lD4 = 101 0100 0100, RTR=O (data frame)
14로\
-224-
Embedded System Lab

## Page 225

Arbitration
SUPP0se ECU2, ECU3, and ECU4 start to
send their frames simultaneously.
lD2 = 101 1110 0011, RTR=O (dataframe)
lD3 = 101 0100 0100, RTR=I (remoteframe)
lD4 = 101 0100 0100, RTR=O (data frame)
ECU4 is the winner.
1
-225-
2
3
4
ID4
fra e4
Embedded System Lab

## Page 226

-226 -
Arbitration
ID2 = 101 1110 0011, RTR=O (dataframe)
ID3 = 101 0100 0100, RTR=I (remote frame)
ID4 = 101 0100 0100, RTR=O (data frame)
Embedded System Lab

## Page 227

Bitwise Arbitration
During arbitration,
(by using an internal monitoring device 0f the bus)
each sender compares
{the level of the transmitted bit} with
{the level of the bit on the bus}
) If these levels are identical, the ECU continues to send
Sending a recessive level & observing a dominant level
Lose arbitration
Close down and send no more bits
-227-
Embedded System Lab

## Page 228

ID2 = 101
ID3 = 101
ID4 = 101
Bitwise Arbitration
1110 0011, RTR=O (data frame)
0100 0100, RTR= 1 (remote frame)
0100 0100, RTR=O (data frame)
ldentifier
ECU2
ECU3
ECU4
Bus
-228-
SOF
0
0
0
0
1
0
1
1
1
1
9
0
0
0
0
8
1
1
1
1
7
1
0
0
0
6
1
1
1
5 4 3 2 1
Receiving Mode
0
0
0
0
0
0
0
0
0
1
1
1
0
0
0
0
0
0
0
1
0
0
Receiving Mode
Transmission Mode
Embedded System Lab

## Page 229

-229-
이제 여러 개의 ECU가 동시에 CAN frame을 전송하고자 할
때 어 떻게 bitwise arbitration 되는 지 보도록 하겠습니 다.
Embedded System Lab

## Page 230

㉦
CAN Node A
CAN Node B
CAN Node C
CAN Node D
-230-
Bus Access in the CAN Network
0不3
I
I
I
I
I
I
0文097
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
0
I
I
I
dc
I
I
I
I
I
I
I
I
I
I
02(7 E
IIIIII
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
I
Embedded System Lab

## Page 231

Control Field
Reserved bits
rl and rO
Reserved for later use
Ensure future upward compatibility (extended CAN 2.OB frame)
UsuaIIy set dominant values
SOF
-231-
ID
ControI
field
RTR rl r0 DLC DLC DLC DL
Data
EOF
Embedded System Lab

## Page 232

Control Field
Data length code (DLC)
DLC3, DLC2, DLCI, DLCO
" The number Of bytes in the data field
SOF
-232-
ID
ControI
field
RTR rl r0 DLC DLC DLC DL
Data
EOF
Embedded System Lab

## Page 233

Data Length C0de
Number 하
DLC3
Data Bytes
-233-
ControI FieId
DLC2
DLCI
DLCO
Embedded System Lab

## Page 234

ControI FieId
Data Length C0de of CAN FD
Number 하
DLC3
Data Bytes
12
20
24
32
48
64
DLC2
DLCI
DLCO
Embedded System Lab

## Page 235

Data field
Standard Data frame
Data field
SOF
-235-
ID
RTR rl rO DLC DLC DLC DL
3 2 1 0
Data
EOF
Embedded System Lab

## Page 236

Data Field
Location of the information to be transmitted
From 0 t0 a max 0f 8 bytes
9 different kinds Of length
4 bits of DLC
Data field
0~8b es
ControI
field
-236-
CRC
field
Embedded System Lab

## Page 237

Data Field
Transmission Of one byte
MSB (most significant bit) first
LSB (least significant bit) last
ExampIe
transmission 0f Ox1A = ( 0000 1010 )2
Data field
1 b e
ControI
0001 1010
field
-237-
CRC
field
Embedded System Lab

## Page 238

Data Field
Transmission Of each byte
MSB (most significant bit) first
LSB (least significant bit) last
ControI
field
-238-
Data field
0~8b es
CRC
field
Embedded System Lab

## Page 239

Endianness 0f Data field
Then, how 4 byte data 0f Ox IA 3B 56 78 will be sent?
Endianness
Byte ordering
-239-
Embedded System Lab

## Page 240

Endianness 0f Data field
SUPP0se that one CAN frame wants t0 send 4 byte data
Ox IA 3B 56 78
Big endian (MotoroIa mode)
Send
then
then
then
ControI
OxIA= ( 0000 1010)2 first
Ox3B=(0011 1011 )2
0x56 =( 0000 1010 )2
0x78 =(0111 1000 )2
1010
0011
4 byte
Bi endian
1011 0101
0001
field
-240-
0110
0111 1000
CRC
field
Embedded System Lab

## Page 241

Endianness 0f Data field
SUPP0se that one CAN frame wants t0 send 4 byte data
Ox IA 3B 56 78
LittIe endian (lntel MOde)
Send
then
then
then
ControI
0x78 =(0111 1000 )2 first
0x56 =( 0000 1010 )2
Ox3B=( 0011 1011 )2
Ox1A= ( 0001 1010 )2
4 byte
(LittIe endian)
0101 0110 0011 1011
0111 1000
field
-241-
0001 1010
CRC
field
Embedded System Lab

## Page 242

080 Field
CRC field
CRC sequence
15 bits
CRC delimiter
lbit,l
DLC DLC
SOF
-242-
ID
RTR rl 『0 DLC
3
1
DL
0
Data
2
CRC
FieId
CRC
Sequence
15 bits
CRC
DeI
lbit
EOF
Embedded System Lab

## Page 243

080 Field
CaIcuIation of CRC sequence
by the sender CAN controller
Destuff the bit sequence from SOF to data
SOF
SOF
ID
ID
RTR rl rO DLC DLC DLC DL
Destuffing
RTR rl r DLC DLC DL DL
Destuffed bit sequence
-243-
Data
Data
Embedded System Lab

## Page 244

080 Field
CaIcuIation of CRC sequence
by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0” to the (destuffed) bit sequence from SOF to data
SOF
-244-
ID
Destuffed bit sequence
RTR rl r DLC DLC DL DL
Data
000 0000 0000 0000
Embedded System Lab

## Page 245

080 Field
CaIcuIation of CRC sequence
by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0” to the (destuffed) bit sequence from SOF to data
Divide the above result (in modulo 2)
by (1100 0101 1001 1001)2 (Ox C599)
• The remainder Of this division, 15 bits, is CRC sequence
1100 0101 1001 1001
SOF
-245-
ID
RTR rl r DLC DLC DL DL
Data
000 0000 0000 0000
Embedded System Lab

## Page 246

080 Field
The sender CAN controller
appends 15 bit CRC sequence and
lbit CRC delimiter (whose value is
after data field
SOF
ID
RTR rl rO DLC DLC DLC DL
1 bit
CRC
FieId
CRC
Data
Sequence
15 bits
CRC
DeI
lbit
11 bits
-246-
EOF
Embedded System Lab

## Page 247

080 Field
-247-
CRC sequence
15bits
Hamming distance: d = 6
Five independent bit errors are 1000/0 detectable
Embedded System Lab

## Page 248

Hamming distance
Hamming distance between two strings Of equal length
The number Of positions
at which the corresponding symbols are different
The hamming distance between 1011 and 0101
0 1 0 1
-248-
Embedded System Lab

## Page 249

-249-
Hamming distance
Hamming distance measures
Minimum number of substitutions
required tO change one string intO the other
Number Of errors that transformed one string intO the other
Embedded System Lab

## Page 250

080 in CAN
CRC in CAN protocol
ls restricted to the detection of errors
NOt applied tO their correction
-250-
Embedded System Lab

## Page 251

080 Field in Receiver
The receiver CAN controller
divides the (destuffed) bit sequence
from SOF to CRC sequence (in modulo 2)
by (1100 0101 1001 1001)2 (Ox C599)
If the remainder of this division is “000 0000 0000 0000"
NO transmission error
If the remainder iS nonzero,
Error
1100 0101 1001 1001
SOF
-251-
ID
RTR rl DLC DLC DL
3 2 1
DL
0
Data
CRC
Se uenc
Embedded System Lab

## Page 252

AcknowIedgement field
AcknowIedgement field
ACK slot
lbit
夐
ACK delimiter
lbit, 1
SOF
ID
RTR rl rO DLC DLC DLC DL
1 bit
CRC
Data
Sequence
15 bits
11 bits
-252-
ACK
FieId
CRC ACK ACK
EOF
DeI slot DeI
lbit
1 bit lbit
Embedded System Lab

## Page 253

AcknowIedgement field
The sender CAN controller sends two recessive bits
during acknowledgement field
ln practice, the sender leaves the bus free and
switches itself tO listening or 'receiver' mode
SOF
ID
RTR rl rO DLC DLC DLC DL
1 bit
CRC
Data
Sequence
15 bits
11 bits
-253-
ACK
FieId
CRC ACK ACK
EOF
DeI slot DeI
lbit
1 bit lbit
Embedded System Lab

## Page 254

㉦
080 and AcknowIedgement
The receiver CAN controller sends a value
during ACK slot
with considering the error occurrence
SOF
ID
11 bits
RTR rl rO DLC DLC DLC DL
1 bit
Receiver
CRC CRC ACK ACK
EOF
Data
Sequence DeI slot DeI
Embedded System Lab

## Page 255

㉦
080 and AcknowIedgement
If no transmission error iS detected by the receiver
The receiver CAN controller sends
a positive acknowledgement during ACK slot
A dominant level, 0
SOF
ID
RTR rl rO DLC DLC DLC DL
1 bit
11 bits
-255-
0 (NO error)
sent by receiver
CRC CRC ACK ACK
EOF
Data
Sequence DeI slot DeI
Embedded System Lab

## Page 256

㉦
080 and AcknowIedgement
If transmission error is detected,
The receiver CAN controller sends
a negative acknowledgement during ACK slot
A recessive level, 1
SOF
ID
RTR rl rO DLC DLC DLC DL
1 bit
11 bits
-256-
1 (Error)
sent by receiver
CRC CRC ACK ACK
EOF
Data
Sequence DeI slot DeI
Embedded System Lab

## Page 257

㉦
080 and AcknowIedgement
ExampIe1
Suppose that there is no error detected from SOF to CRC del
during the transmission 0f frame3 by ECU3.
1
-257-
2
3
ID3
frame3
4
5
6
Embedded System Lab

## Page 258

㉦
080 and AcknowIedgement
ExampIe1
Then, receivers (i.e. ECUI, ECU2, ECU4, ECU5, and ECU6)
send dominant values, “0” during ACK slot,
independent Of any acceptance filtering.
ECU3 (Sender) will read the logical value “0” during ACK slot.
1
-258-
2
3
4
5
6
Embedded System Lab

## Page 259

㉦
Positive AcknowIedgement
After sender transmits data field,
it starts to transmit CRC field.
Both receivers start to execute CRC check.
Sender
Rec. 1
Rec. 2
CAN
Bus
-259-
Header
Header
CRC
Data
Sequence
Data
CRC
Sequence
Embedded System Lab

## Page 260

㉦
Positive AcknowIedgement
CRC field complete.
B0th receivers have completed CRC check.
Both receivers start to send an ACK.
Sender sends ACK slot recessively.
Sender
Rec. 1
Rec. 2
CAN
Bus
-260-
Header
Header
CRC CRC ACK
Data
Sequence
Data
CRC
Sequence
DeI sIOt
CRC
DeI
Embedded System Lab

## Page 261

㉦
Positive AcknowIedgement
B0th receivers ack positively (ACK slot: dominant)
Sender detects positive acknowledgement.
Sender starts to transmit ACK DEL.
Sender
Rec. 1
Rec. 2
CAN
Bus
-261-
Header
Header
CRC
Data
Sequence
ACK
lsIOt
CRC
ACK
DeI
DeI
Data
CRC
Sequence
CRC
DeI
Embedded System Lab

## Page 262

㉦
Positive AcknowIedgement
ACK field complete.
Sender starts to transmit EOF.
ACK ACK
I sIOtI DeI
Sender
Rec. 1
Rec. 2
CAN
Bus
-262-
Header
Header
CRC
Data
Sequence
CRC
Data
Sequence
CRC
DeI
CRC
DeI
I
I
EOF
Embedded System Lab

## Page 263

㉦
Positive AcknowIedgement
End of frame (EOF) complete.
End 0f frame: “000 0000" (7 bit recessive bits)
lFS(lnter Frame Space) starts
ACK ACK
I sIOtI DeI I EOF
Sender
Rec. 1
Rec. 2
CAN
Bus
-263-
Header
Header
CRC
Data
Sequence
CRC
Data
Sequence
CRC
DeI
CRC
DeI
I
I
I
I
I
“1111111”
I
I
I
“1111111”
I
Embedded System Lab

## Page 264

㉦
Positive AcknowIedgement
IFS (lnter Frame Space) complete.
Then Bus ldle.
ACK ACK
I sIOtI DeI I
Sender
Rec. 1
Rec. 2
CAN
Bus
-264-
Header
Header
CRC
Data
Sequence
CRC
CRC
DeI
CRC
Data
I
I
I
I
I
I
I
I
EOF
“1111111”
“1111111”
Sequence DeI
I
Data frame
Embedded System Lab

## Page 265

㉦
080 and AcknowIedgement
ExampIe 2
SLIPPOSe
" ECUI, ECU5, and ECU6 detect no errors from SOF to CRC del
during the transmission of frame3 by ECU3
2 ECU2 and ECU4 detect errors during CRC check
1
-265-
2
3
ID3
frame3
4
5
6
Embedded System Lab

## Page 266

㉦
080 and AcknowIedgement
ExampIe 2
Then, during ACK slot,
" ECUI, ECU5, and ECU6 send dominant values, “0
ECU2 and ECU4 send recessive values, 1
ECU3(Sender) will read the logical value “0" during ACK slot.
1
-266-
2
3
4
5
6
Embedded System Lab

## Page 267

㉦
080 and AcknowIedgement
ExampIe 2
After ACK delimiter,
" ECU2 and ECU4 send error frames tO signal errors
1
-267-
2
Error
frame
3
4
Error
frame
5
6
Embedded System Lab

## Page 268

㉦
080 and AcknowIedgement
ExampIe 3
SLIPPOSe
" ECUI, ECU2, ECU4, ECU5, and ECU6 detect errors in CRC check
during the transmission of frame3 by ECU3
1
-268-
2
3
ID3
frame3
4
5
6
Embedded System Lab

## Page 269

㉦
080 and AcknowIedgement
ExampIe 2
Then, during ACK slot,
" ECUI, ECU2, ECU4, ECU5, and ECU6 send recessive values, 1
ECU3 (Sender) will read the logical value “1” during ACK slot.
ECU3 (Sender)detects an ACK error
1
-269-
2
3
4
5
6
Embedded System Lab

## Page 270

㉦
080 and AcknowIedgement
ExampIe 2
Then, during ACK slot,
" ECUI, ECU2, ECU4, ECU5, and ECU6 send recessive values, 1
ECU3 (Sender) will read the logical value “1” during ACK slot.
detects an ACK error and
terminates the 0090ing message transmission
by sending an error flag.
1
-270-
2
3
Error
frame
4
5
6
Embedded System Lab

## Page 271

㉦
080 and AcknowIedgement
ExampIe 2
Then, during ACK slot,
" ECUI, ECU2, ECU4, ECU5, and ECU6 send recessive values, 1
ECUI, ECU2, ECU4, ECU5, and ECU6 also send error frames
later.
1
Error
frame
-271-
2
Error
frame
3
Error
frame
4
0
Error
frame
5
Error
frame
6
Error
frame
Embedded System Lab

## Page 272

AcknowIedgement field
AcknowIedgement field
ACK slot
ACK delimiter
CRC
field
CRC DeIimiter
ACK field
End of
frame
ACK 90t
-272-
ACK Delimiter
Embedded System Lab

## Page 273

AcknowIedgement field
-273-
ACK slot
Whenever a receiver has correctly received a message,
it acknowledges this tO the sender
by sending a dominant bit in the ACK slot time
Embedded System Lab

## Page 274

AcknowIedgement field
ACK delimiter
Always recessive
SO, when a message has been correctly received
by all ECUs in the network
ACK slot ((dominant) bit is surrounded by two recessive bits
(CRC delimiter and ACK delimiter)
CRC
field
CRC Delimiter
End of
ACK field
ACK 90t
-274-
frame
ACK Delimiter
Embedded System Lab

## Page 275

-275-
AcknowIedgement field
EV ln a transmission,
The sender ECU sends two recessive bits along the bus
ln practice,
the sender leaves the bus free and
switches itself tO listening or 'receiver' mode
Embedded System Lab

## Page 276

-276-
AcknowIedgement field
Whenever a receiver has correctly received a message,
it acknowledges this tO the sender
by sending a dominant bit in the ACK sIOt time
A〃 receivers in the network
must send an ack signal over the network
if they have not detected any error Of any kind.
Embedded System Lab

## Page 277

AcknowIedgement field
If the sending ECU receives an acknowledgement,
lt means at least one ECU in the network has received the
message completely and without errors.
-277-
Embedded System Lab

## Page 278

End 0f data frame
Data frame is terminated
by a sequence Of 7 recessive bits
The end of data frame has a fixed structure
NO bit stuffing
SOF
-278-
ID
RTR rl rO DLC DLC DLC DL
CRC CRC ACK ACK
EOF
Data
Sequence DeI slot DeI
Embedded System Lab

## Page 279

lnterframe SDace [IFS)
lnterframe space (IFS)
Before the next frame starts to be sent,
minimum 3 bit recessive time interval iS required in CAN.
SOF
-279-
ID
RTR rl rO DLC DLC DLC DL
CRC
Data
Sequence
CRC ACK ACK
EOF
DeI slot DeI
23 bit
IFS
Embedded System Lab

## Page 280

6) PhYSicaI Transfer Of a Standard Data Frame
SignaIs in oscilloscope
500kbps
SOF
Arbitration
field
3.5v
2.5v
1.5v
-280-
ontro
Data field (4 bytes)
field
CRC
field
ACK
field
EOF
Embedded System Lab

## Page 281

6) PhYSicaI Transfer Of a Standard Data Frame
SignaIs in oscilloscope
500kbps
SOF: dominant ("0”)
SOF
Arbitration
field
0
3.5v
2.5v
1.5v
-281-
ontro
Data field (4 bytes)
field
CRC
field
ACK
field
EOF
Embedded System Lab

## Page 282

6) PhYSicaI Transfer Of a Standard Data Frame
SignaIs in oscilloscope
500kbps
Control field:
000100 4byte data
SOF
Arbitration
field
ontro
Data field (4 bytes)
field
CRC
field
b00100
3.5v
2.5v
1.5v
-282-
ACK
field
EOF
Embedded System Lab

## Page 283

6) PhYSicaI Transfer Of a Standard Data Frame
SignaIs in oscilloscope
500kbps
CRC del, ACK slot, ACK del
101
SOF
Arbitration
field
ontro
Data field (4 bytes)
field
CRC
field
3.5v
2.5v
1.5v
-283-
ACK
field
EOF
Embedded System Lab

## Page 284

6) PhYSicaI Transfer Of a Standard Data Frame
SignaIs in oscilloscope
500kbps
EOF
1111111
SOF
Arbitration
field
ontro
Data field (4 bytes)
field
CRC
field
3.5v
2.5v
1.5v
-284-
ACK
field
EOF
11111111
Embedded System Lab

## Page 285

㉦
12
Arb1tratlon field
ldentifier
Stored in buffers
-285-
Standard Data Frame in CAN
6
00血이 field
4
Data frame
N(0로N로8)
Data field
8
Stored in transmit]receve buffers
B1t stuffing
(mmber Of bits = 44 + 8N)
16
CRC field
8
15
0R0
8
7
Endof frame
Embedded System Lab

## Page 286

㉦
Arbltratlon field
ldentifier
Stored in buffers
-286-
Standard Data Frame in CAN
00血이 field
Data frame
N(0드N드8)
Data field
Stored in transmit/recewe buffers
Bit stuffing
(number Of bits = 44 + 8N)
0R0 field
0R0
8
Endof frame
Embedded System Lab

## Page 287

-287-
STANDARD REMOTE FRAME IN CAN
Embedded System Lab

## Page 288

㉦
Data Frame VS Remote Frame
Data frame
Contains some information (data) in this frame
Purpose
Sending some information
Remote frame
Does NOT contain any information in this frame
i.e. no data field
Purpose
Request the transmission Of its corresponding data frame
from another ECU
> The identifier Of the corresponding data frame is the same as the
remote frame
NO automotive usage
-288-
Embedded System Lab

## Page 289

㉦
SOF
SOF
-289-
Data Frame VS Remote Frame
Data frame
ID
Header
RTR
rl
ControI Field
rO
DLC
TaiI
CRC CRC ACK AC
Data
Sequence DeI SIOt DeI
Remote frame
Header
ID
RTR
rl
ControI Field
rO
DLC
CRC
Sequence
Tail
CRC ACK AC
SIot DeI
DeI
EOF
EOF
Embedded System Lab

## Page 290

㉦
Data Frame VS Remote Frame
Data frame
RTR (Remote Transmission Request) bit = “0” (dominant)
"RTR(Remote transmission request)" is false.
> i.e. NOT request the transmission from another ECU
Remote frame
RTR (Remote Transmission Request) bit = “1” (recessive)
"RTR(Remote transmission request)" is true.
> i.e. Request the transmission from another ECU
Request one data frame whose identifier is the same as the
remote frame
-290-
Embedded System Lab

## Page 291

Remote Frame
An ECU may need information, which it does not have,
tO carry out its task.
An ECU needing data can initialize the request
for transmission of the data from another ECU
by sending a remote frame.
-291-
Embedded System Lab

## Page 292

Remote frame
Remote frame
Start of frame
Arbitration field
Control field
(NO Data field)
CRC sequence
Acknowledgement field
End of frame
7th area (interframe space)
-292-
Embedded System Lab

## Page 293

Remote Frame
Remote frame
IFS
-293-
SOF
ID
RTR
rl
ControI FieId
rO
DLC
CRC CRC ACK AC
Sequence DeI SIot DeI
EOF
IFS
Embedded System Lab

## Page 294

Remote frame
Start of frame
The same as in 'data frame'
Arbitration field
ldentifier
the same as in 'data frame'
RTR bit
Recessive (Compare that it is dominant in data frame)
ldentifier
SOF IDIO
MSB
-294-
ID9
ID8
ID7
ID6
ID5
ID4
ID3
ID2
IDI
IDO
LSB
RTR= 1
Embedded System Lab

## Page 295

㉦
Data Frame VS Remote Frame
If a remote frame and its corresponding data frame
are sending simultaneously,
their identifiers are same and SO
lD5i lD4:
RTRi IDE
ECU A
SOF
Standard
Data
frame
ECU B
Standard
Remote
frame
l다0: lD9
lD7
lD6
lD3
lD2:
IDI :
lDo
Recessive
Dominant
Recessive
Dominant
ECU B Remote frame loses the arbitration
ECU A data frame takes over the bus

## Page 296

Remote frame
ControI field
Reserved bits: the same
Data length
Unnecessary, but it is advisable tO specify this field correctly
SOF
-296-
ID
ControI
RTR rl rO DLC DLC DLC DLC
3 2 1 0
“000 0”
EOF
Embedded System Lab

## Page 297

Remote frame
Data field
No data field in remote frame
CRC, acknowledgement, EOF and IFS
The same
SOF
-297-
ID
RTR rl rO DLC DLC DLC DLC
1
CRC
Sequenc
CRC ACK ACK
DeI slot DeI
EOF
IFS
Embedded System Lab

## Page 298

Remote Frame
Remote frame
(number of bits = 44)
12
Arb1trat10n field
6
00而이 field
4
8 毯
16
0R0 field
15
CRC
0
0
7
End of frame
-298-
lld까ID까까I|티티ID|lld까ID까까I國|IID까I|1||||||||
Embedded System Lab

## Page 299

ERROR FRAME IN CAN
-299-
Embedded System Lab

## Page 300

Error Frame
Error frame is used tO indicate errors detected
during communication
An 0090ing erroneous data transmission iS terminated and
an error frame iS issued.
-300-
Embedded System Lab

## Page 301

Error Frame
Error frame
Error flag
Error delimiter
-301-
Embedded System Lab

## Page 302

Active Error Frame
EV Active error frame
Active error flag
(6 dominant bits)
000 000
Error delimiter
(8 recessive bits)
11111111
Active error flag
Data Remote
0 0 00 0 0
or
frame
frame
-302-
1
Error delimiter
1 1 1 1 1 1
1
IFS or OverIoad frame
Embedded System Lab

## Page 303

Active Error Frame
Active error flag
Consists Of si)( consecutive 'dominant' bitS
" The primary and secondary error flags might overlap.
Data
Error frame
frame
Error flag
Superpositlon Of
Error flags
-303-
lnterframe space
or
Overload frame
Error Delimiter
Embedded System Lab

## Page 304

Active Error Frame
EV Active error frame
The primary and secondary error flags might overlap.
6 active error flag length K12
Error delimiter
(8 recessive bits)
11111111
Error frame
Data frame
remote frame
-304-
6
Error flag
로6
Echo
error flag
8
Error delimiter
lnter-frame space
frame
Embedded System Lab

## Page 305

Passive Error Frame
EV Passive error frame
Passive error flag
6 recessive bitS
111111
Error delimiter
8 recessive bitS
11111111
Passive error
flag
Data Remote
111111
or
frame
frame
-305-
1
Error delimiter
1 1 1 1 1 1
1
IFS or OverIoad frame
Embedded System Lab

## Page 306

-306-
Passive Error Frame
Passive error flag
Consists Of si)( consecutive 'recessive' bits
unless it is overwritten by dominant' bits from other ECUs
Embedded System Lab

## Page 307

DATA PROTECTION IN CAN
-307-
Embedded System Lab

## Page 308

CAN
하otocol
CAN
PhysicaI Layer
-308-
Data Protection
Error Tracking
Error Handling
Error Detection
Error Avoidance
Embedded System Lab

## Page 309

㉦
CAN
PrinciDIe Of Data Protection
-309-
Strict real time requirements
Reliable data transmission
Because CAN is aISO used in very time and safety critical
applications within the motor vehicle,
> requirements for data integrity are extremely high.
Embedded System Lab

## Page 310

㉦
-310-
PrinciDIe Of Data Protection
ReIiabIe data transmission
A prerequisite for the safety and reliability of ECU in vehicles
Embedded System Lab

## Page 311

㉦
-311-
PrinciDIe Of Data Protection
For reliable data transmission,
(First) Physical system design
" With considering EMC(EIectroMagnetic CompatibiIity)
Embedded System Lab

## Page 312

㉦
PrinciDIe Of Data Protection
Despite electromagnetically compatible design and
physical data protection,
Several interference due tO noise may OCCur
Attenuation and distortion Of signals
) Errors may occur!
-312-
Embedded System Lab

## Page 313

㉦
Let
PI
PrinciDIe Of Data Protection
probability with which the data is disturbed during transmission
P2
probability that disturbed data remains undetected
Then
Probability Of Data integrity = 1 - P1*P2
-313-
Embedded System Lab

## Page 314

㉦
-314-
PrinciDIe Of Data Protection
To reduce PI
(i.e. For avoiding corruption 0f data )
Physical layer design
EIectromagneticaIIy compatible
To reduce P2
(i.e. For detecting corrupted data well)
Effective logical error detection and logical error handling
Embedded System Lab

## Page 315

-315-
Data Protection
CAN physical layer
Twist
" Reducing cross talk
Termination
Preventing reflection
Differential bus
Reducing external noise effect
CAN controller (CAN protocol)
Effective logical error detection and logical error handling
Embedded System Lab

## Page 316

ERROR DETECTION IN CAN
-316-
Embedded System Lab

## Page 317

Logical Error detection
Five different types 0f errors (N0t mutually exclusive)
ln the Physical layer
Bit error
Stuff error
Frame structure level
ACKnowIedgement error
• CRC error
Violation of the frame structure
Structure error
-317-
Embedded System Lab

## Page 318

㉦
Bit error
Stuff bit error
ACK error
Transmitter
Receiver
Bit error
Stuff bit error
Format error
CRC error
-318-
Error Detection Procedures
0
Arbitration |
Control
Data
CRC
ACK
EOFI
Embedded System Lab

## Page 319

CAN BLIS
Bit (monitoring) Error
Core
CAN ControIIer
CAN
Transceiver
-319-
MCU
Core
CAN ControIIer
TxD
CAN
RxD
Transceiver
Embedded System Lab

## Page 320

Transceiver
-320-
㉦
Error Detection by Transmitter
Bit (monitoring) Error
`C)鬱4)鬱4)
TxD
Core
CAN ControIIer
RxD
CAN
Core
CAN ControIIer
CAN
Transceiver
Core
CAN ControIIer
CAN
Transceiver
Embedded System Lab

## Page 321

ERROR SIGNALING
-321-
Embedded System Lab

## Page 322

Error Signaling
If an active ECU detects an error condition
send an ACTIVE error frame
Active error frame
Active error flag
Data Remote
0 0 00 0 0
or
frame
frame
-322-
1
Error delimiter
1 1 1 1 1 1
1
IFS or OverIoad frame
Embedded System Lab

## Page 323

Error Signaling
If a passive ECU detects an error condition
send a PASSIVE error frame
Passive error frame
Passive error flag
Data Remote
111111
or
frame
frame
-323-
Error delimiter
IFS or OverIoad frame
Embedded System Lab

## Page 324

Error Signaling
-324-
For a Bit error,
a Stuff error,
a Structure error, or
an ACK error,
the error-detecting ECU starts tO send an error frame at the next bit
Embedded System Lab

## Page 325

Error Signaling
For a CRC error,
the error detecting ECU starts tO send an error frame
at the bit following the ACK delimiter
unless an error frame for another error condition has already been
started.
-325-
Embedded System Lab

## Page 326

Error HandIing
Six dominant bits in error flag
An intentional violation Of the bit stuffing rule
" Generating a bit stuffing error
Error
detection
Data frame
lnform
all other ECU
Error frame
Error indication
by error-detecting
CAN ECU
Active error frame
Active error flag
-326-
1
Error delimiter
1 1 1 11 1
1
Embedded System Lab

## Page 327

-327-
Error HandIing
Transmission Of an error flag ensures that
other CAN ECUs
" will aISO transmit an error flag
> secondary error flag
and thereby aISO terminate the regular data transmission
just like the sender Of the primary error flag.
Depending on the situation,
the primary and secondary error flags might overlap.
Embedded System Lab

## Page 328

Error HandIing
Transmission Of an error flag
is always terminated by an error delimiter.
The error delimiter consists Of 8 recessive bits.
The error delimiter
replaces the ACK delimiter and
the EOF of a regular message transmission,
Error
detection
Active
error flag
000000
Error
delimiter
11111111
Data frame
-328-
Error indication
by error-detecting
CAN ECU
Embedded System Lab

## Page 329

Error HandIing
Together with the obligatory transmission pause (IFS)
on the CAN bus,
the error delimiter Of 8 recessive bits results in 11 recessive
bits (bus-idle identifier).
Error
detection
Data frame
Active
error flag
000000
Error
IFS
delimiter
-329-
Error indication
by error-detecting
CAN ECU
Embedded System Lab

## Page 330

㉦
HandIing A Bit Monitoring Error
EV Because Of Si)( consecutive dominant biS,
Some receivers that do not detect errors until this time
recognize a bit stuffing error.
They send error flags
> CAN bus may represent the max 12 consecutive dominant bis.
recesslve
Sende
dominant
Receiver
CAN
Bus
-330-
recesslve
dominant
Error Flag
Error FIag
2
Data Field Error FIag -빠-- Error FIag
m e e
YS em a

## Page 331

recesslve
Sende
dominant
Receiver
㉦
HandIing A Bit Monitoring Error
EV Because Of Si)( consecutive dominant biS,
Some receivers that do not detect errors until this time
recognize a bit stuffing error.
They send error flags
> After error flags, they send error delimiters.
Data Field Error FIag -빠-- Error FIag Error Delimiter
Error Flag
Error FIag
I
CAN
Bus
-331-
recesslve
dominant
Error Delimiter
Error Delimiter
Embedded System Lab

## Page 332

㉦
HandIing A Bit Monitoring Error
Transmission Of an error flag
is always terminated by an error delimiter.
The error delimiter consists Of 8 recessive bits.
Sende
Receiver
CAN
Bus
-332-
dominant
Data FieId Error FIag Error FIag Error DeIimiter
Embedded System Lab

## Page 333

㉦
HandIing A Bit Monitoring Error
The error delimiter
replaces the ACK delimiter and the EOF of a regular message
transmission,
Sende
Receiver
CAN
Bus
-333-
dominant
Data FieId Error FIag Error FIag Error DeIimiter
Embedded System Lab

## Page 334

on the CAN bus,
the error delimiter of 8 recessive bits results in 11
bits (bus-idle identifier).
Sende
Receiver
CAN
Bus
-334-
㉦
HandIing A Bit Monitoring Error
Together with the obligatory transmission pause (IFS)
Data Field Error FIag -빠-- Error FIag Error Delimiter
dominant
recesslve
Embedded System Lab

## Page 335

-335-
Error HandIing
Error handling is completed
by the sender 0f the interrupted CAN message.
After the IFS, the sender attempts tO transmit
the interrupted CAN message again.
Because Of priority-driven bus access,
there iS no guarantee Of an immediate repetition.
Embedded System Lab

## Page 336

Error HandIing
Case 1 (The best case)
After an error detection, error frames are sent.
" Primary and secondary error flags overlap.
After IFS,
An interrupted data frame may start t0 be sent.
Error
detection
Data frame
Active
error flag
000000
Error
delimiter
IFS
1 1 1 1 1 1 11 1 11
Data frame
-336-
Error indication
by error-detecting
CAN ECU
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 337

Error HandIing
Case 1 (The best case)
A time period of 17 bit times elapses
from error detection tO resending
6(primary error fIag)+8(error deIimiter)+3(IFS)
Error
detection
Data frame
Active
error flag
000000
17 bits
Error
delimiter
IFS
1 1 1 1 1 1 11 1 11
Data frame
-337-
Error indication
by error-detecting
CAN ECU
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 338

Error HandIing
Case 2
After an error detection, error frames are sent.
" Primary and secondary error flags dO not overlap at all.
After IFS,
An interrupted data frame may start tO be sent.
Error
detection
Data frame
Superposition
oferrorfla s
000000 000000
Error
delimiter
IFS
11111111111
Data frame
Error indication
by error-detecting
CAN ECU
-338-
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 339

Error HandIing
Case 2
A time period of 23 bit times elapses
from error detection tO resending
6(primary error flag)+ 6(secondary error flag)+ 8(error
deIimiter)+3(IFS)
23 bits
Error
detection
Data frame
Superposition
oferrorfla s
000000 000000
Error
delimiter
IFS
11111111111
Data frame
Error indication
by error-detecting
CAN ECU
-339-
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 340

Error HandIing
Case 3 (Passive state (error detecting) ECU)
After an error detection, error frames are sent.
" Primary and secondary error flags overlap.
After IFS and "Suspend Transmission Time'
An interrupted data frame may start tO be sent.
Error
detection
Data frame
Superposition
oferrorfla s
Error
delimiter
IFS
Suspend
trans. time
6 bits
6 bits
Error indication
by error-detecting
CAN ECU
-340-
Data frame
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 341

Error HandIing
Case 3 (Passive state (error detecting) ECU)
A time period of 31 bit times elapses from error detection t0
resending
6(primary error flag)+ 6(secondary error flag)+ 8(error
deIimiter)+3(IFS)+8(suspend transmission time)
Error
detection
Data frame
Superposition
oferrorfla s
6 bits
6 bits
31 bits
Error
IFS
delimiter
11111111111
Suspend
trans. time
11111111
Data frame
Error indication
by error-detecting
CAN ECU
-341-
Repetition Of
interrupted data
frame
Embedded System Lab

## Page 342

ERROR TRACKING IN CAN
-342-
Embedded System Lab

## Page 343

Error Counters
Each CAN controller has
a TEC (Transmit Error Counter)
a REC (Receive Error Counter)
-343-
Embedded System Lab

## Page 344

REC > 127
or
TEC > 127
Error Passive
Error Tracking
Start_Up
대W Reset)
Error Active
REC < 128
and
TEC < 128
TEC > 255
SW Reset
and
Reception of 128 )( 11
Bus Off
“1” bits
Embedded System Lab

## Page 345

Error Counters
EV ln case Of successful transmission Of a data or remote
frame,
the relevant error counter iS decremented
(TEC=TEC-I; REC=REC-I).
-345-
Embedded System Lab

## Page 346

Error Counters
Detection and subsequent transmission Of an error flag
causes
the relevant error counter tO be incremented according tO
certain rules.
-346-
Embedded System Lab

## Page 347

㉦
Receive Error Counter [8E0]
Change When a node
successful reception 0f a message if REC 127
Avalue successful reception 0fa message if REC > 127
btw 119
and 127
+8
-347-
detects an error
unless a Bit Error during an Active Error FIag or an OverIoad FIag
detects a dominant bit as the first bit after sending an Error Flag
detects a Bit Error while sending an Active E. F. or an OverIoad FIag
detects more than 7 consecutive dominant bits
after sending an Active E. F., Passive E.F. or OverIoad FIag
(+8 for each additional 8 dominant bits)
Embedded System Lab

## Page 348

㉦
Change
+8
-348-
Transmit Error Counter [TEC)
When a node
Successful transmission Of a message
detects a Bit Error while sending an Active E.F. or an OverIoad FIag
detects more than 7 consecutive dominant bits
after sending an Active E.F., Passive E.F. or OverIoad FIag
(+8 for each additional 8 dominant bits)
sends an Error FIag
(Exception 1.
If a node is 'error passive and detects an ACK Error and
does not detect a 'dominant' bit while sending its Passive E.F.
Exception 2:
If a node sends an Error FIag because a Stuff Error occurred during arbitration
whereby the Stuff Bit is located before the RTR bit, and should have been
recessive and has been sent as 'recessive' but monitored as 'dominant'
ln exception 1 and 2, TEC is not changed.)
Embedded System Lab

## Page 349

Error Active ECU
Depending on the specific error count, a CAN
controller handles switching Of the error state.
REC > 127
or
TEC > 127
Error Passive
-349-
Start_Up
대W Reset)
Error Active
REC < 128
and
TEC < 128
TEC > 255
SW Reset
and
Reception of 128 )( 11
Bus Off
“1” bits
mbedded System Lab

## Page 350

Error Active ECU
After the reset,
"Error Active" CAN controller
" Active error flag after detecting an error.
Active error frame
Active error flag
0 0 0 00 0
-350-
1
Error delimiter
111111
1
Embedded System Lab

## Page 351

-351-
Error Active ECU
After 11 bit consecutive 1
error delimiter (8 bit “1”) + IFS (3bit “1”)
thiS (error active) sender tries
t0 send the interrupted CAN message.
Embedded System Lab

## Page 352

-352-
Error Passive ECU
When a limit is exceeded (TEC>127 or REC>127),
the CAN controllers switch over to the "Error Passive” state.
Embedded System Lab

## Page 353

Error Passive ECU
When a limit is exceeded (TEC>127 or REC>127),
the CAN controllers switch over to the "Error Passive” state.
"Error Passive" CAN controllers
Passive error flag
Sending si)( homogeneous recessive bits.
This prevents the error-detecting receivers from globalizing
detected errors.
Passive error frame
Passive error flag
11 11 1 1
Error delimiter
Data Remote
or
frame
frame
-353-
IFS or OverIoad frame
Embedded System Lab

## Page 354

Error Passive ECU
Before starting tO transmit the next CAN frame,
The error passive ECU must wait the "Suspend Transmission
Time” (8 bits)
Frame
lntermission
lnterframe space
Suspend
transmission
8 bits
Bus idle
Frame
Embedded System Lab

## Page 355

Error Tracking
If a CAN controller fails or
if there are extreme accumulations Of errors,
a state transition is made to the "Bus Off” state.
The CAN controller disconnects from the CAN bus.
-355-
Embedded System Lab

## Page 356

Error Tracking
The Bus-Off state can 이•飜y be exited
by intervention 0f the host (with a mandatory waiting time 0f
128 x 11 bits)
or by a hardware reset.
-356-
Embedded System Lab

## Page 357

OVERLOAD FRAME
-357-
Embedded System Lab

## Page 358

OverIoad Conditions
EV lnternal conditions Of a receiver
which requires a delay Of the next data frame or remote frame
Detection of a dominant bit
during the first two bits 0f interframe space
Detection of a dominant bit at the last bit of
(The 8th bit) an Error DeIimiter
Overload Delimiter
(The 7th bit) an End of Frame
-358-
Embedded System Lab

## Page 359

OverIoad Conditions
EV lnternal conditions Of a receiver
) The start 0f an overload frame is a〃owed only in the first time
bit 0f the anticipated interframe space
ReguIar
recelver
Receiver
which requires delay
-359-
Data frame
Data frame
OverIoad
frame
000000 1 1 1 1 1 1 1 1
OverIoad frame
sent by one receiver
Embedded System Lab

## Page 360

OverIoad Conditions
Detection Of a dominant bit during the first two bits Of
interframe space
The start Of the overload frame occurs immediately after the
detection of the dominant bit
0
-360-
End of Frame
• ln rframe •
Bus ldle
pace
0Ⅴ
혁-극•
OverIoad
frame
Embedded System Lab

## Page 361

OverIoad Conditions
Detection Of a dominant bit during the first two bits Of
interframe space
The start Of the overload frame occurs immediately after the
detection of the dominant bit
0
-361-
End of Frame
: lnterfr ei
Bus ldle
Spa
OV
OverIoad
frame
Embedded System Lab

## Page 362

-362-
OverIoad Conditions
Detection of a dominant bit at the last bit of
(The 8th bit) an Error DeIimiter
Overload Delimiter
(The 7th bit) an End of Frame
) The start of the overload frame occurs
immediately after the detection Of the dominant bit
Embedded System Lab

## Page 363

MESSAGE DOUBLING
-363-
Embedded System Lab

## Page 364

LocaI Errors in EOF
Error detection region
OF
Arbitration
field
ontro
field
Error detection
by Sender ECU
Data field (4 bytes)
Error detection
by Receiver ECU
CRC
field
-364-
ACK
field
EOF
One bit
difference
Embedded System Lab

## Page 365

LocaI Errors in EOF
SUPP0se that a single bit error near the end of End of
Frame (EOF).
SOF
Arbitration
field
-365-
ontro
Data field (4 bytes)
field
CRC
field
One bit error
occurs!
ACK
field
EOF
Embedded System Lab

## Page 366

LocaI Errors in EOF
Then
Receivers recognize thiS frame as valid
But the sender does not.
SOF
Arbitration
CRC
field
field
-366-
ontro
Data field (4 bytes)
field
One bit error
occurs!
ACK
field
EOF
Embedded System Lab

## Page 367

Message DoubIing
Thus
The sender must retransmit this frame.
Receivers may have 90t one frame more than once.
SOF
Arbitration
field
-367-
ontro
Data field (4 bytes)
field
CRC
field
One bit error
occurs!
ACK
field
EOF
Embedded System Lab

## Page 368

6) CAN BLIS Error HandIing - Message DoubIing
One message may be doubled by a single bit error near
the end 0f End of Frame (EOF).
If CAN bus is used in a disturbed environment:
-368-
NEVER use toggle messages
NEVER transmit messages carrying relative data
like angle increments or delta counts
Use protected protocols or sequence numbers
for data or program segmentation
~ Alive counter
> ls incremented upon each transmission Of the data
and the receiver can verify that the counter has been incremented.
Embedded System Lab

## Page 369

Overload frame
Purpose 0f overload frame
to indicate that an ECU has been overloaded for a certain time
With an OverIoad Frame
the transmitter is requested
t0 delay the start 0f the next transmission.
OverIoad
flag
000000
OverIoad
delimiter
11111111
-369-
OverIoad
frame
Embedded System Lab

## Page 370

OverIoad Frame
OverIoad flag field (OLF)
6 consecutive dominant bits
The OLF destroys the defined structure 0f interframe space
) AII the other ECUs then detect an overload condition, and
each starts to transmit an OLF on its own account.
OverIoad
flag
000000
OverIoad
delimiter
11111111
-370-
OverIoad
frame
Embedded System Lab

## Page 371

OverIoad Conditions
ExampIe
If one receiver requires a delay Of the next frame,
Receiver
which requires delay
-371-
Data frame
Embedded System Lab

## Page 372

OverIoad Conditions
ExampIe
If one receiver requires a delay Of the next frame,
it will send one overload frame after the current frame.
OverIoad frame
sent by one receiver
Receiver
which requires delay
-372-
Data frame
OverIoad
frame
Embedded System Lab

## Page 373

OverIoad Conditions
ExampIe
Because Of dominant values in this overload frame,
CAN bus values become dominant during IFS.
OverIoad frame
sent by one receiver
Receiver
which requires delay
CAN Bus
-373-
Data frame
Data frame
OverIoad
frame
IFS
000000
Embedded System Lab

## Page 374

OverIoad Conditions
ExampIe
Because of dominant values of the lst bit in IFS,
other ECUs will also send overload frames.
OverIoad frame
sent by one receiver
Receiver
which requires delay
-374-
Data frame
OverIoad
frame
IFS
000000
000000111 11111
OverIoad frames
sent by other ECUs
Embedded System Lab

## Page 375

OverIoad Conditions
ExampIe
Thus, overload flags may overlap.
OverIoad frame
sent by one receiver
Receiver
which requires delay
CAN Bus
-375-
Data frame
Data frame
OverIoad
frame
IFS
000000
00000011111111
0000000 1 1 1 1 1 1 1 1
Embedded System Lab

## Page 376

OverIoad Conditions
Receiver
which requires delay
CAN Bus
-376-
ExampIe
After (overlapped) overload delimiter, one IFS will be followed.
OverIoad frame
sent by one receiver
OverIoad
frame
00000011111111
Data frame
Data frame
IFS
000000
0000000
11111111
Embedded System Lab

## Page 377

OverIoad Conditions
Receiver
which requires delay
CAN Bus
-377-
ExampIe
As a result, the next frame transmission will be delayed.
OverIoad frame
sent by one receiver
OverIoad
frame
00000011111111
Data frame
Data frame
IFS
000000
0000000
11111111
1 1 1 Nextframe
Embedded System Lab

## Page 378

OverIoad Conditions
Superposition 0f overlapped flags
End of frame or
Error Delimiter or
Overload Delimiter
-378-
Overload frame
OverIoad flag
Superposition 0f
OverIoad flags
lntefframe space
or
Overload frame
Overload Delimiter
Embedded System Lab

## Page 379

OverIoad Frame
OverIoad Frame
The same shape Of an Active Error Frame
Difference between overload and error frames
OverIoad frame
> does not increase the error counters and
> does not causes a retransmission Of a frame.
OverIoad
flag
000000
OverIoad
delimiter
11111111
-379-
OverIoad
frame
Embedded System Lab

## Page 380

Overload frame
An overload frame can appear at the end 0f
A frame
an error delimiter, or
another overload delimiter
End of frame or
Error Delimiter or
Overload Delimiter
Overload frame
OverIoad flag
Superposition 0f
OverIoad flags
lntefframe space
or
Overload frame
Overload Delimiter
Embedded System Lab

## Page 381

Overload frame
An overload frame is followed
by the interframe space, or
by another overload frame.
End of frame or
Error Delimiter or
Overload Delimiter
-381-
Overload frame
OverIoad flag
Superposition 0f
OverIoad flags
lntefframe space.
or
Overload frame .
Overload Delimitet
• MfiDéddéd 하성té『h뀐•龜

## Page 382

-382-
Overload frame
TO avoid blocking the bus indefinitely,
only tWO consecutive overload frames can be generated
tO delay the following data or remote frames.
Embedded System Lab

## Page 383

CAN 2.OB
-383-
Embedded System Lab

## Page 384

ISO 11898-1
ISO 11898-1
CAN 2.OA
• Standard frame of 11 identifier bits
CAN 2.OB
Standard frame of 11 identifier bits
Extended frame of 29 identifier bits
Embedded System Lab

## Page 385

㉦
Standard VS Extended Frames
Control
0
0
Arbitration
11—bit identifier
•刀
•刀
•刀
0
0
3
DLC
0 far data 7 for remote frame
Base identifier
|d28-|d18
ifthe first ll-bits are the some standard frames prevail
Arbitration
Extended identifier
|d17-|d0
-385-
Control
그 3 DLC
0 for data frame
1 for remote frame
Embedded System Lab

## Page 386

㉦
Standard VS Extended Frames
RTR(Remote transmission request)
SRR(substitute remote request bit)
IDE (identifier extension bit)
Control
Arbitration
0 ll—bit identifier : 0 3
: 刀
0 for data 7 for remote frame
DLC
ifthe first ll-bits are the some standard frames prevail
8
-386-
Base identifier
|d28-|d18
. 刀 :0
Arbitration
Extended identifier
|d17-|d0
Control
그 3 DLC
0 for data frame
1 for remote frame
Embedded System Lab

## Page 387

㉦
0
Standard VS Extended Frames
Arbitration
11—bit identifier
0 for data 7 for remote frame
Control
DLC
• ifthe first ll-bits are the some standard frames prevail
8
-387-
Base identifier
|d28-|d18
.Arbitration
Extended identifier
|d17-|d0
Control
그 3 DLC
0 for data frame
1 for remote frame
Embedded System Lab

## Page 388

㉦
0
Standard VS Extended Frames
Arbitration
11—bit identifier
ControI
0 3
DLC
0 for data 7 for remote frame
if he first ll-bits are the some standard frames prevail
8
-388-
Base identifier
|d28-|d18
刀
0
ArSitration
Extended identifier
|d17-|d0
Control
그 3 DLC
0 for data frame
1 for remote frame
Embedded System Lab

## Page 389

㉦
0
Standard VS Extended Frames
Arbitration
11—bit identifier
Control
刀
刀
0 3
m
DLC
0 for data 7 for remote frame
ifthe first ll-bits are the some standard frames prevail
8
-389-
Base identifier
|d28-|d18
0
Arbitration
Extended identifier
|d17-|d0
Control
그 3 DLC
0 for data frame
1 for remote frame
Embedded System Lab

## Page 390

㉦
0
Standard VS Extended Frames
Arbitration
11—bit identifier
Control
刀
刀
刀
0 3
m
DLC
0 for data 7 for remote frame
ifthe first ll-bits are the some standard frames prevail
8
-390-
Base identifier
|d28-|d18
0
m
Arbitration
Extended identifier
|d17-|d0
Control
그 3 : DLC
0 for aata frame
1 for remote frame
Embedded System Lab

## Page 391

ECU A
SOF
Standard
frame
ECU B
SOF
Extended
frame
<Dominique Paret>
-391-
㉦
Arbitration btw 2.OA and 2.OB
Arbitration between a standard frame and an extended frame
lDs:. lD4:
RTR? IDE
lD26: lD25
l다0: lD9
lD7
lD6
lD24
lD3
lD23: lD22 : lD21
lDo
lD20 : D19 :lD18 : SRRE IDE
lD2ä
lD28 •
lD27
Recessiv
Dominan
Recessiv
Dominan
The extended frame loses the arbitration
Embedded System Lab

## Page 392

Frames in 2.OA and 2.OB
Standard data frames
SOF
11 bit
0
rl 『0
DLC DLC
0 0 0
DL
0
Data
3
2
DLC
1
CRC CRC ACK ACK
Sequence DeI slot DeI
RTR
-392-
EOF
Embedded System Lab

## Page 393

Frames in 2.OA and 2.OB
Standard and extended data frames
SOF
11 bit
0
SOF
11 bit
0
0 0
RTR
:IDE
0
DLC
Data
CRC CRC ACK ACK
Sequence DeI slot DeI
『1 rO
EOF
18 bit
0 0 0
RTR
DLC
Data
늘R艮
-393-
CRC CRC ACK ACK
EOF
Sequence DeI slot DeI
Embedded System Lab

## Page 394

Frames in 2.OA and 2.OB
Standard and extended data frames
SOF
11 bit
0
SOF
11 bit
0
-394-
0 : 0
RTR:
: 『1 :rO
『1 rO
:0
DLC
Data
CRC CRC ACK ACK
Sequence DeI slot DeI
EOF
:IDS
18 bit
0 0 0
RTR
DLC
Data
CRC CRC ACK ACK
EOF
Sequence DeI slot DeI
Embedded System Lab

## Page 395

Frames in 2.OA and 2.OB
Standard and extended data frames
SOF
11 bit
『1 『0
: 0 0
0
RTR
DLC
18 bit
Data
RTR
CRC CRC ACK ACK
Sequence DeI slot DeI
『1 rO
EOF
SOF
11 bit :
SRR
-395-
DLC
Data
CRC CRC ACK ACK
EOF
Sequence DeI slot DeI
Embedded System Lab

## Page 396

Frames in 2.OA and 2.OB
Standard and extended data frames
SOF
0
SOF
『1 rO
0
-396-
11 bit
11 bit
『1 『0
0 0 0 DLC
: RTR
Data
0 0 0
• RTR
CRC CRC ACK ACK
Sequence DeI slot DeI
EOF
IDE
SRR
18 bit
DLC
Data
CRC CRC ACK ACK
EOF
Sequence DeI slot DeI
Embedded System Lab

## Page 397

6) ADDIication fields 0f CAN 2.OA and CAN 2.OB
三95%
三50%
-397-
Applications
0
(0
Trucks
Buses
UtilitV vehicles
Message type
Standard
message frame
(1 1-bit identifier)
Extended
message frame
(29-bit identifier)
2.OA
CAN
2.OB
Embedded System Lab
