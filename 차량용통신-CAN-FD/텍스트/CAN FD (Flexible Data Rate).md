# CAN FD (Flexible Data Rate)

- 원본: [CAN FD (Flexible Data Rate).pdf](<../교안/CAN FD (Flexible Data Rate).pdf>)

## Page 1

- 1 -
Embedded System Lab
CAN with Flexible Data-Rate(CAN FD)
전 재 욱Embedded System  연구실성균관대학교

## Page 2

- 2 -
Embedded System Lab
Outline
Introduction CAN FD
CAN FD Frames
CAN FD Bit Requirements
Transceiver Delay Compensation
Ringing Suppression Technology

## Page 3

- 3 -
Embedded System Lab
COMPARISON OF AUTOMOTIVE NETWORKS

## Page 4

- 4 -
Embedded System Lab
Automotive Communication System

## Page 5

- 5 -
Embedded System Lab
Automotive Communication System
Peripheral Sensor Interface (PSI)
To interface for automotive sensor applications
Distributed System Interface (DSI)
To interface sensors and actuators to ECU
Local Interconnect Network (LIN)
To interface sensors and actuators to ECU

## Page 6

- 6 -
Embedded System Lab
Automotive Communication System
RTPGE
Reduced Twisted Pair Gigabit Ethernet
One Pair EtherNet (OPEN)
100BASE-T1
100 Mbps Ethernet with two wires
Broadcom: BroadR-Reach
1 Gbps Ethernet with two wires
1000BASE-T1
Marvell

## Page 7

- 7 -
Embedded System Lab
Automotive Communication System
Automotive PIXel link (APIX)
to transmit control signals and image data
Media Oriented System Transportation (MOST 150)
A high-speed multimedia network technology
150 Mbps

## Page 8

- 8 -
Embedded System Lab
ISSUE OF CAN

## Page 9

- 9 -
Embedded System Lab
Intrinsic Probabilistic Aspect of CAN
Event triggered system
CAN messages are ordered hierarchically using ID values
The only truly ‘deterministic’ message
ID = ( 000 0000 0000 )2its latency time = ‘one CAN frame’ – one bit + IFS (3 bits)
The other messages
Probabilistic because of arbitration
Dependent transmission and its asso. latency time
If we want to be sure of communicating at a given instant,
i.e. to be temporally deterministic,CAN cannot

## Page 10

- 10 -
Embedded System Lab
FLERAY

## Page 11

- 11 -
Embedded System Lab
Necessity for A New Comm Protocol
CAN network limitation
The CAN network has reached its performance limits (1Mbps).
A faster protocol is required.
Real-time communication
Higher reliability and data rate are required.
Electrical control alternative to hydraulic control
Application of X-by-Wire to powertrain and safety systems is considered.

## Page 12

- 12 -
Embedded System Lab
FlexRay
Time Triggered Protocol (TTP) of max 10 Mbps for X-by-Wire

## Page 13

- 13 -
Embedded System Lab
FlexRay
High-reliable communication protocol for X-by-Wire
Redundant communication
enables fully-duplicated network configuration
It enables schedule monitoring by hardware.TransceiverTransceiverECUMCUFlexRayControllerTransceiverTransceiverECUMCUFlexRayControllerTransceiverTransceiverECUMCUFlexRayControllerChannel AChannel B

## Page 14

- 14 -
Embedded System Lab
FlexRay
Support of flexible topology
can support various types of topologies
bus, star, mixed
combination of the static segment and the dynamic segment

## Page 15

- 15 -
Embedded System Lab
FlexRay
BMW X5 (2006)
Used in chassis control system
Electronic damper control

## Page 16

- 16 -
Embedded System Lab
FlexRay
BMW 7 Series (2008)
Fully implement FlexRay
All of the driving systems are linked
15 ECUs on the FlexRay bus
The first electronic stability program (ESP) featuring a FlexRay data bus interface

## Page 17

- 17 -
Embedded System Lab
FlexRay
Time-triggered communication not flexible enough
1234

## Page 18

- 18 -
Embedded System Lab
FlexRay
Truck architectures of a long life span
twice the life span of a  passenger car architecture
have to be extendable for new features or regulations
FlexRay requires
a complete predefinition of the communication schedule
a difficult and ineffective job with regard to future extensions

## Page 19

- 19 -
Embedded System Lab
FlexRay
A broad diversity of different vehicles and markets
light trucks, heavy trucks, omnibuses, special-purpose vehicles
Europe, North America, South America, AsiaReuse the core of the electronic architecture for all vehicles and markets and to adopt it to the respective needs.
Building one common communication schedule of FlexRay
Challenging
Building Vehicle-dependent communication schedules
More complicated

## Page 20

- 20 -
Embedded System Lab
CAN-FD

## Page 21

- 21 -
Embedded System Lab
Automotive Communication System

## Page 22

- 22 -
Embedded System Lab
Bosch Introduces CAN-FD Protocol at International CAN Conference
April 17, 2012
Bosch and Vector demonstrated a 10 Mbps CAN-FD network prototype
using off-the-shelf transceiver chips compliant with ISO 11898-2.
This CAN-FD supports larger payloads.
Up to 64 bytein a single data-frame.

## Page 23

- 23 -
Embedded System Lab
Motivation of CAN FD
Time-triggered communication not flexible enough
CAN FD
Flexible1234

## Page 24

- 24 -
Embedded System Lab
Motivation of CAN FD
Truck architectures of a long life span
twice the life span of a  passenger car architecture
have to be extendable for new features or regulations
CAN FD
Flexible1234

## Page 25

- 25 -
Embedded System Lab
Motivation of CAN FD
A broad diversity of different vehicles and markets
light trucks, heavy trucks, omnibuses, special-purpose vehicles
Europe, North America, South America, Asia
Flexible CAN or CAN FD1234

## Page 26

- 26 -
Embedded System Lab
Motivation of CAN FD
High effort for migration to FlexRay
Hardware costs
Software changes
Close gap btw CAN (max 1 Mbps) and FlexRay (10 Mbps)
Increasing BW in automotive communication

## Page 27

- 27 -
Embedded System Lab
From CAN to CAN FD
Evolution

## Page 28

- 28 -
Embedded System Lab
From CAN to CAN FD
Mixture of classic CAN and CAN FD nodes
Communicate only with classic CAN messages
CAN FD Node

## Page 29

- 29 -
Embedded System Lab
From CAN to CAN FD
Mixture of classic CAN and CAN FD nodes
Switch off the classic CAN nodes and
only interact with CAN FD nodes
e.g. during flashing through the gateway
CAN FD NodeGatewayOBD

## Page 30

- 30 -
Embedded System Lab
From CAN to CAN FD
All nodes are CAN FD capable
Legacy SWC (application level SW of ECU, 8 date bytes)
Only change of system software (e.g. MCAL)Higher speed FD data rate can be used
CAN FD NodeCAN FD NodeCAN FD Node

## Page 31

- 31 -
Embedded System Lab
From CAN to CAN FD
All nodes are CAN FD capable
New SWC (more than 8 date bytes)
Every ECU SW (application & system level SW) must be changed.Higher speed FD data rate with Longer data size can be used
CAN FD NodeCAN FD NodeCAN FD Node

## Page 32

- 32 -
Embedded System Lab
Same as CAN
Same in CAN and CAN FD
arbitration
acknowledgement mechanism

## Page 33

- 33 -
Embedded System Lab
Difference from CAN
Switch to higher bit rate for transmission of
Data Length Code
Data Field
Frame CRC
Data fields with more than 8 bytes possible
configured by unused DLC codes “1001” to “1111”
12, 16, 20, 24, 32, 48, 64 bytes
New CRC polynomials for longer data fields, HD=6
17 bit (CRC-17)
up to 16 byte data fields
21bit (CRC-21)
up to 64 byte data fields

## Page 34

- 34 -
Embedded System Lab
Use Case of CAN FD
Fast SW download
Standard data rate – 500 kbps
Time to transmit 4 standard CAN message with 8 data bytes and 15% stuff bits 999.6 μs
FD data rate – 2 Mbps
Time to transmit 1 CAN FD message with 32 data bytes and 15% stuff bits 223 μs
Replacement of local CAN
Avoid splitting of long messages
Higher BW

## Page 35

- 35 -
Embedded System Lab
CAN FD

## Page 36

- 36 -
Embedded System Lab
Frame Formats
CAN standard (or base) format
11 bit long identifier and constant bit rate
CAN extended format
29 bit long identifier and constant bit rate
CAN FD standard (or base) format
11 bit long identifier and dual bit rate
CAN FD extended format
29 bit long identifier and dual bit rate

## Page 37

- 37 -
Embedded System Lab
Standard Formats in CAN & CAN-FD

## Page 38

- 38 -
Embedded System Lab
Extended Formats in CAN & CAN-FD

## Page 39

- 39 -
Embedded System Lab
Frame Types
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

## Page 40

- 40 -
Embedded System Lab
CAN FD Standard Frame
Max bit rate
Arbitration phase:1 Mbps
Data phase > 1 Mbps
EDLr0
ACK slotACK DelEOFStuff CountParityBit 2Bit 1Bit 0
r1
21bits or 17 bits

## Page 41

- 41 -
Embedded System Lab
CAN FD Standard Frame
r1, r0: reserved bits
Transmitted dominant, reserved for future protocol variants
Receivers accept dominant and recessive bits in all combinations
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 42

- 42 -
Embedded System Lab
CAN FD Standard Frame
IDE: Identifier extension flag
IDE = “0” (dominant) = false
No identifier extensionstandard frame 11bit identifier
IDE = “1” (recessive) = true
Identifier extensionExtended frame 29 bit identifier
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 43

- 43 -
Embedded System Lab
CAN FD Standard Frame
EDL: Extended Data Length
EDL = “1” (recessive) = true
CAN FD frame format (new DLC-coding and CRC)
EDL = “0” (dominant) = false
classic CAN frame format
FDF (FD Format)
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 44

- 44 -
Embedded System Lab
CAN FD Standard Frame
BRS: Bit Rate Switch
BRS = “1” (recessive) = true
Switch to alternate bit rate
BRS = “0” (dominant) = false
Do not switch bit rate
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 45

- 45 -
Embedded System Lab
CAN FD Standard Frame
ESI: Error State Indicator
ESI = “1” (recessive) = true
Transmitting ECU is error passive
ESI = “0” (dominant) = false
Transmitting ECU is error active
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 46

- 46 -
Embedded System Lab
CAN FD Standard Frame
DLC: Data Length Code
DLC: 0000 ~ 1000 (same as classic CAN DLC)
0 ~ 8 bytes
DLC: 1001 ~ 1111 (different from classic CAN DLC)
12, 16, 20, 24, 32, 48, 64 bytes
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 47

- 47 -
Embedded System Lab
CAN FD DLCNumber of Data BytesDLC3 DLC2 DLC1 DLC00 0 0 0 01 0 0 0 12 0 0 1 03 0 0 1 14 0 1 0 05 0 1 0 16 0 1 1 07 0 1 1 18 1 0 0 0

## Page 48

- 48 -
Embedded System Lab
CAN FD DLCNumber of Data BytesDLC3 DLC2 DLC1 DLC012 1 0 0 116 1 0 1 020 1 0 1 124 1 1 0 032 1 1 0 148 1 1 1 064 1 1 1 1

## Page 49

- 49 -
Embedded System Lab
CAN FD CRC Field
Stuff count
3 bit Gray code
To count the number of stuff bits from SOF to Data field with mod 8
1 parity bit
Even parity with 3 bit Gray code and 1 parity bit
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 50

- 50 -
Embedded System Lab
CAN FD CRC Field
Gray code count of stuff bits from SOF to data field (mod 8)
Parity bitStuff bit count mod 8Stuff count Gray-coded value Parity bit0 000 01 00112 01103 01014 11005 11116 10107 1001

## Page 51

- 51 -
Embedded System Lab
CAN FD CRC Field
CRC sequence
A CAN FD ECU uses different CRC generator-polynomials for different frame formats.
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 52

- 52 -
Embedded System Lab
CAN FD Standard Frame
Up to 16 byte data field (DLC = 0000 ~ 1010)
17bit CRC sequence
EDLr0
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0
r1

## Page 53

- 53 -
Embedded System Lab
CAN FD Standard Frame
More than 16 byte data field (DLC = 1011 ~ 1111)
21bit CRC sequence
EDLr0
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit19
r1

## Page 54

- 54 -
Embedded System Lab
CAN FD CRC Field
CRC15
All frames in CAN format
CRC17
in CAN FD format with a data fieldup to 16 byte long
CRC21
in CAN FD format with a data field >  16 byte long
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 55

- 55 -
Embedded System Lab
CRC Polynomials
CAN
CRC-15
0xC599
(1100 0101 1001 1001)2
(x15+x14+x10+x8+x7+x4+x3+1)  = (x+1) · (x7+x3+1) · (x7+x3+x2+x+1)
Hamming distance: 6

## Page 56

- 56 -
Embedded System Lab
CRC Polynomials
CAN FD
CRC-17
0x3685
(00 0011 0110 1000 0101)2
(x17+x16+x14+x13+x11+x6+x4+x3+x1+1)= (x+1) · (x16+x13+x10+x9+x8+x7+x6+x3+1)
Hamming distance: 6
CRC-21
0x302899
(11 0000 0010 1000 1001 1001)2
(x21+x20+x13+x11+x7+x4+x3+1) = (x+1) · (x10+x3+1) · (x10+x3+x2+x1+1)
Hamming distance: 6

## Page 57

- 57 -
Embedded System Lab
CAN FD CRC Field
At the start of the frame,
all three CRC sequences shall be calculated concurrently
The ECU that wins the arbitration sends the CRC sequence selected by the values of the frame’s EDL bit and DLC.
The Receivers shall consider only the selected CRC polynomial to check for a CRC-error.

## Page 58

- 58 -
Embedded System Lab
Calculation of CRC sequence by the sender CAN controller
Destuff the bit sequence from SOF to datar1r0DLC3DLC2DLC1DLC0SOFRTRIDDataDestuffed bit sequencer1r0DLC3DLC2DLC1DLC0SOFRTRIDDataDestuffing
Classic CAN CRC Field

## Page 59

- 59 -
Embedded System Lab
Calculation of CRC sequence by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0” to the (destuffed) bit sequence from SOF to data
Divide the above result (in modulo 2)by  (1100  0101 1001 1001)2(0xC599)
The remainder of this division, 15 bits, is CRC sequence1100  0101 1001 1001
Classic CAN CRC Field
r1r0DLC3DLC2DLC1DLC0SOFRTRIDData000 0000 0000 0000

## Page 60

- 60 -
Embedded System Labr1r0DLC3DLC2DLC1DLC0
The sender CAN controller
appends 15 bit CRC sequence and1bit CRC delimiter (whose value is “1”)after data fieldSOFEOFRTRIDDataCRCSequenceCRCDelCRC Field1bit“1”15 bits11 bits1 bit
Classic CAN CRC Field

## Page 61

- 61 -
Embedded System Lab
Calculation of CRC sequence by the sender CAN FD controller (data ≤ 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 17 bit “0” to the bit sequence from SOF to stuff count
CAN FD CRC Field
0 0000 0000 0000 0000r1r0DLCSOF IDDataIDEEDLBRSESIStuffcount
Bit streams for CRC sequence

## Page 62

- 62 -
Embedded System Lab
Calculation of CRC sequence by the sender CAN FD controller (data ≤ 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 17 bit “0” to the bit sequence from SOF to stuff count
Divide the above result (in modulo 2)by  (00 0011 0110 1000 0101)2(0x 3685)
The remainder of this division, 17 bits, is CRC sequence00 0011 0110 1000 0101
CAN FD CRC Field
0 0000 0000 0000 0000r1r0DLCSOF IDDataIDEEDLBRSESIStuffcount

## Page 63

- 63 -
Embedded System Lab
The sender CAN controller
appends 17 bit CRC sequence and 1bit CRC delimiterafter stuff count EOFDataCRCSequenceCRCDelCRC Field1bit“1”17 bits
CAN FD CRC Field
Stuff Countr1r0DLCSOF IDIDEEDLBRSESI

## Page 64

- 64 -
Embedded System Lab
Calculation of CRC sequence by the sender CAN FD controller (data > 16 bytes)
Stuffing bits from SOF to data field are included in CRC calculation.
Add 21 bit “0” to the bit sequence from SOF to stuff count
Divide the above result (in modulo 2)by  (11 0000 0010 1000 1001 1001)2(0x302899)
The remainder of this division, 21 bits, is CRC sequence11 0000 0010 1000 1001 1001
CAN FD CRC Field
0 0000 0000 0000 0000 0000r1r0DLCSOF IDDataIDEEDLBRSESIStuffcount

## Page 65

- 65 -
Embedded System Lab
The sender CAN controller
appends 21 bit CRC sequence and 1bit CRC delimiter after stuff countEOFDataCRCSequenceCRCDelCRC Field1bit“1”21 bits
CAN FD CRC Field
Stuff Count4 itsr1r0DLCSOF IDIDEEDLBRSESI

## Page 66

- 66 -
Embedded System Lab
CAN FD CRC Field
CRC delimiter
The CRC sequence is followed by the CRC delimiter.
In CAN format,
CRC delimiter one single recessive bit

## Page 67

- 67 -
Embedded System Lab
CAN FD CRC Field
CRC delimiter
The CRC sequence is followed by the CRC delimiter.
In CAN format,
CRC delimiter one single recessive bit
In CAN FD format,
CRC  delimiter may consist of one or two recessive bits.

## Page 68

- 68 -
Embedded System Lab
CAN FD CRC Field
In CAN FD format,
When a Transmitter sends only one recessive bit as CRC delimiter,
But due to phase shift, a receiver may accept delimiter of up to 2 bit times.
A Receiver will send its acknowledgement bit after the first CRC delimiter bit.

## Page 69

- 69 -
Embedded System Lab
CAN FD CRC Field
CAN FD protocol controllers switch back from the data phase to the arbitration phase
when they reach the sample point of the (first bit of the) CRC delimiter.

## Page 70

- 70 -
Embedded System Lab
CAN FD ACK Field
In the ACK FIELD, the transmitting ECU sends recessive bits.
The phase-shift between the ECUs in a CAN network
is defined by the delay times in the transceivers andthe propagation time on the CAN bus line.
The phase-shift is the same in CAN and in CAN FD,
but it is proportionally larger in the phase with the shorter bit time.

## Page 71

- 71 -
Embedded System Lab
CAN FD ACK Field
All Receivers in the network may have a different phase-shift to the Transmitter,
depending on their distances from the Transmitter, since they see the transmitted edges at different times.

## Page 72

- 72 -
Embedded System Lab
CAN FD ACK Field
All Receivers in the network may have a different phase-shift to the Transmitter,
depending on their distances from the Transmitter, since they see the transmitted edges at different times.
To compensate for these phase-shifts when the bit rate is switched back from the shorter to the longer bit time,
one additional bit time tolerance is allowed before and after the edge from recessive to dominant that starts the ACK slot

## Page 73

- 73 -
Embedded System Lab
CAN FD ACK Slot
In CAN FD format,
all ECU shall accept a two bit long dominant phase of overlapping ACK bitas a valid ACK, to compensate for phase shifts between the Receivers.
In CAN format,
a dominant bit following the single ACK slot bit is a form-error.

## Page 74

- 74 -
Embedded System Lab
ACK Delimiter
The recessive ACK delimiter is the last bit of the ACK field.
As a consequence, the ACK slot is surrounded by two recessive bits (CRC delimiter, ACK delimiter).

## Page 75

- 75 -
Embedded System Lab
End of Frame
Each data frame is delimited by a flag sequence consisting of 7 recessive bits.
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 76

- 76 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
From SOF to data field,
As in the standard CAN stuffing mechanism,the max number of consecutive bits with the same value is five, the max distance btw edges for resynchronization is ten.
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1
Same bit stuffing as CAN

## Page 77

- 77 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
In CRC field,
Bit stuffing rule is different from the classic CANDifferent bit stuffing from CAN
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 78

- 78 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit Stuffing in CAN-FD
In CRC field,
Bit stuffing rule is different from the classic CAN
The stuff bits shall be inserted at fixed positions.CRC field starts with a fixed stuff bit. Then a fixed stuff bit is inserted after each 4 bits of the CRC field.Every stuff bit value is the opposite value of the previous bit.Different bit stuffing from CAN
EDL
ACK slotACK DelEOF
SRRStuff CountParityBit 2Bit 1Bit 0Bit20Bit1921bits or 17 bits
EDLr0r1

## Page 79

- 79 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value of the previous bit.
Example 1
CRC 17, Stuff count = 0
CRC field
S0000 1CCCC SCCCC SCCCC SCCCC SC
C: bits in CRC sequence
red: fixed stuff bits

## Page 80

- 80 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value of the previous bit.
Example 2
CRC 17, Stuff count = 3
CRC field
S0101 0 CCCC SCCCC SCCCC SCCCC SC
C: bits in CRC sequence
red: fixed stuff bits

## Page 81

- 81 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value of the previous bit.
Example 3
CRC 21, Stuff count = 5

## Page 82

- 82 -
Embedded System Lab
Bit Stuffing in CAN-FD
Bit stuffing in CRC field
CRC field starts with a fixed stuff bit.
Then a fixed stuff bit is inserted after each 4 bits of the CRC field.
Every stuff bit value is the opposite value of the previous bit.
Example 3
CRC 21, Stuff count = 5
CRC field
S1111 0 CCCC SCCCC SCCCC SCCCC SCCCC SC
C: bits in CRC sequence
red: fixed stuff bits

## Page 83

- 83 -
Embedded System Lab
CAN FD Bit Time Requirements
The CAN FD protocol defines two bit rates
for the arbitration-phase with a longer bit time
The same as for the nominal bit rate and the nominal bit time in the CAN protocol specification
for the data phase with the same or with a shorter bit time
Data bit rate with the data bit time requires a separate configuration register set.

## Page 84

- 84 -
Embedded System Lab
CAN FD Bit Time Requirements
Time quantum for the nominal bit time
TQ(N) = m(N) * min TQ
m(N) for the nominal bit time
Time quantum for the data bit time
TQ(D) = m(D) * min TQ
m(D) for the data bit time

## Page 85

- 85 -
Embedded System Lab
CAN FD Bit Time Requirements
Nominal bit time
Sync-seg, Prop_seg, Phase_seg1, Phase_seg2

## Page 86

- 86 -
Embedded System Lab
CAN FD Bit Time Requirements
Data bit time
Sync-seg, Prop_seg, Phase_seg1, Phase_seg2

## Page 87

- 87 -
Embedded System Lab
Synchronization Segment (SYNC_SEG)
Sync_seg
The first segment in the NBT
Is used to synchronize the nodes on the bus
Bit edges are expected to occur within the SYNC_SEG
Is fixed at 1TQ (Time Quantum)
1 TQ(N) for nominal bit rate
1 TQ(D) for data bit rate

## Page 88

- 88 -
Embedded System Lab
Propagation Time Segment (PROP_SEG)
In the nominal bit time,
Propagation time segment
is used to compensate for the physical delay times between nodes
twice the sum of the signal’s propagation time on the bus line, the input comparator delay, and the output driver delaytprop= 2(tbus+ tRx+ tTx)

## Page 89

- 89 -
Embedded System Lab
Propagation Time Segment (PROP_SEG)
In the data bit time,
Propagation time segment
May be set to a length of zero time quantum.because only one ECU can send its signal during the data phase.
Is NOT required to compensate for the physical delay times between ECUs

## Page 90

- 90 -
Embedded System Lab
Propagation Time Segment (PROP_SEG)
Is programmable
1 ~ 32 or more TQ(N) for nominal bit rate
0 ~ 8TQ(D) for data bit rate

## Page 91

- 91 -
Embedded System Lab
Phase Segments (PHASE_SEG1 & PHASE_SEG2)
Are used to compensate for edge phase errors on the bus
PS1 can be lengthened or PS2 can be shortened by resyncronization

## Page 92

- 92 -
Embedded System Lab
Phase Segments (PHASE_SEG1 & PHASE_SEG2)
Are used to compensate for edge phase errors on the bus
PS1 can be lengthened or PS2 can be shortened by resyncronization
PS1 is programmable
1 ~ 32 or more TQ(N) for nominal bit rate
1 ~ 8 TQ(D) for data bit rate
PS2
PS2(N) = Max (PS1(N), IPT(N))
PS2(D) = Max (PS1(D), IPT(D))
IPT: Information Processing Time

## Page 93

- 93 -
Embedded System Lab
Sample Point
The point of time at which the bus level is read and interpreted as the value of that respective bit
It’s location is at the end of PHASE_SEG1.

## Page 94

- 94 -
Embedded System Lab
Sample Point
The point of time at which the bus level is read and interpreted as the value of that respective bit
It’s location is at the end of PHASE_SEG1.
The position of the sample point may differ in the two bit timing configurations
the length of the PROP_SEG may be reduced in the configuration for the data bit rate.

## Page 95

- 95 -
Embedded System Lab
Information Processing Time (IPT)
The time segment starting with the sample point reserved for calculation the subsequent bit level
Its length is determined by the CAN controller implementation.
The time required for the logic to determine the bit level of a sampled bit
The IPT is less than or equal to
2 TQ(N) long for nominal bit rate
2 TQ(D) long for data bit rate

## Page 96

- 96 -
Embedded System Lab
Bit Rate Switch
Nominal bit rate
From SOF to the front part of BRS bit
From the latter part of CRC delimiter to EOF
Error & overload frames in CAN FD
All frames in classic CAN
EDLr0
ACK slotACK DelEOFStuff CountParityBit 2Bit 1Bit 0
r1

## Page 97

- 97 -
Embedded System Lab
Bit Rate Switch
If the BRS bit is recessive,
the bit rate is switched
From the latter part of BRS bit to the front par of CRC delimiter
If the CAN FD controller sees an error condition,
it will start to send an error frame at normal bit rate.
EDLr0
ACK slotACK DelEOFStuff CountParityBit 2Bit 1Bit 0
r1

## Page 98

- 98 -
Embedded System Lab
Bit Rate Switch
When the bit rate is switched at the BRS bit
it shall be switched immediately after the sample point,
Arbitration PhaseData  Phase

## Page 99

- 99 -
Embedded System Lab
Bit Rate Switch
When the bit rate is switched at the CRC delimiter bit,
it shall be switched immediately after the sample point,
Arbitration PhaseData  Phase

## Page 100

- 100 -
Embedded System Lab
Bit Rate Switch
Sum of BRS and CRC delimiter bits
Sum of one nominal bit time and one data bit time.

## Page 101

- 101 -
Embedded System Lab
Bit Rate Switch
When an error condition is detected during the data bit time,
bit rate switching time may be shifted after the sample point, by the length of the IPT.

## Page 102

- 102 -
Embedded System Lab
Example
Nominal bit time
m(N) = 2
PROP_SEG(N) = 6, PHASE_SEG1(N) = 4, PHASE_SEG2(N) = 4
Data bit time
m(D) = 1
PROP_SEG(D) = 1, PHASE_SEG1(D) = 4, PHASE_SEG2(D) = 4
Intermediate length BRS and CRC delimiter

## Page 103

- 103 -
Embedded System Lab
Example
Nominal bit time
m(N) = 2
PROP_SEG(N) = 6, PHASE_SEG1(N) = 4, PHASE_SEG2(N) = 4

## Page 104

- 104 -
Embedded System Lab
Example
Data bit time
m(D) = 1
PROP_SEG(D) = 1, PHASE_SEG1(D) = 4, PHASE_SEG2(D) = 4

## Page 105

- 105 -
Embedded System Lab
Example
Intermediate length BRS and CRC delimiter

## Page 106

- 106 -
Embedded System Lab
Hard Synchronization
After a hard synchronization,the internal bit time is restarted with SYNC_SEG.
ECU
ECU

## Page 107

- 107 -
Embedded System Lab
Resynchronization Jump Width (RJW)
As a result of resynchronization
PHASE_SEG1 may be lengthened or PHASE_SEG2  may be shortened.
RJW
The max value of lengthening PHASE_SEG1
The max value of shortening of PHASE_SEG2

## Page 108

- 108 -
Embedded System Lab
Resynchronization Jump Width (RJW)
Programmable RJW(N) and RJW(D)
1 ≤ RJW(N) ≤min(16,PHASE_SEG1(N))
1 ≤ RJW(D) ≤min(4, PHASE_SEG1(D))

## Page 109

- 109 -
Embedded System Lab
Phase Errors
The phase error of a bit is given by the position of the edge in relation to the SYNC_SEG
measured in TQ

## Page 110

- 110 -
Embedded System Lab
Phase Errors
e = 0
the edge lies within the SYNC_SEG
e > 0
the edge lies btw the SYNC_SEG and the sample point
before the sample point
e < 0
the edge lies btw the sample point and the following bit’s SYNC_SEG
after the sample point of the previous bit

## Page 111

- 111 -
Embedded System Lab
Ideal Bit Timing (e = 0)
<Wilfred Voss>

## Page 112

- 112 -
Embedded System Lab
Positive Phase Error (e > 0)
<Wilfred Voss>

## Page 113

- 113 -
Embedded System Lab
Negative Phase Error (e < 0)
<Wilfred Voss>

## Page 114

- 114 -
Embedded System Lab
Compensation of Positive Phase Errors
<Wilfred Voss>

## Page 115

- 115 -
Embedded System Lab
Compensation of Negative Phase Errors
<Wilfred Voss>

## Page 116

- 116 -
Embedded System Lab
Resynchronization
When |e| ≤ RJW,the effect of a Resynch is the same as that of a Hard synch
RJW:  Resynchronization Jump Width(or SJW (Synchronization Jump Width).When |e| ≤ RJW and e > 0,
PHASE_SEG1 is lengthened by |e|When |e| ≤ RJW and e < 0,
PHASE_SEG2 is shortened by |e|

## Page 117

- 117 -
Embedded System Lab
Resynchronization
When |e| > RJW,
Resynchronization cannot compensate the phase error completely,
An error of (|e| - RJW) remains
When |e| > RJW and e > 0,
then PHASE_SEG1 is lengthened by an amount equal to the RJW.
When |e| > RJW and e < 0,
then PHASE_SEG2 is shortened by an amount equal to the RJW.

## Page 118

- 118 -
Embedded System Lab
TRANSCEIVER DELAY COMPENSATION

## Page 119

- 119 -
Embedded System Lab
Transceiver Delay
Let’s suppose that
Transceiver’s internal delay time : 200 nsec
Current high speed CAN transceivers may have  a loop delay (from the CAN_Tx pin to the CAN_Rx pin) of up to 255 ns.
Bit rate in the data phase: 10 Mbps
One data bit time: 100 nsec(the length of the CAN bit time in the data-phase) is shorter than (the limit required by the transceiver’s internal delay time) )

## Page 120

- 120 -
Embedded System Lab
Transceiver Delay
Let’s suppose that
Transceiver’s internal delay time : 200 nsec
Current high speed CAN transceivers may have  a loop delay (from the CAN_Tx pin to the CAN_Rx pin) of up to 255 ns.
Bit rate in the data phase: 10 Mbps
One data bit time: 100 nsec
Without a transceiver delay compensation,
the Transmitter  ECU detects a bit error

## Page 121

- 121 -
Embedded System Lab
Bit (monitoring) Error
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU
Transceiver Delay
Tx-Rx loop delay

## Page 122

- 122 -
Embedded System Lab
Transceiver Delay
Transceiver’s internal delay time : 200 nsec
Current high speed CAN transceivers may have  a loop delay (from the CAN_Tx pin to the CAN_Rx pin) of up to 255 ns.
Bit rate in the data phase: 10 Mbps
One data bit time: 100 nsec

## Page 123

- 123 -
Embedded System Lab
Transceiver Delay
Transceiver’s internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps“0” timeTx value100nsBus idle100ns“1”“1”“0”Rx valueBus idle“1”“1”Transceiver delay timeSample point for the first bit  Bit error!……

## Page 124

- 124 -
Embedded System Lab
Transceiver Delay Compensation
CAN FD ECUs
support an optional transceiver delay compensation mechanism, to be used in applications where (the length of the CAN bit time in the data-phase) is shorter than (the limit required by the transceiver’s internal delay time) )

## Page 125

- 125 -
Embedded System Lab
Transceiver Delay Compensation
Transceiver delay compensation mechanism
defines a secondary sample point where the transmitted bit is compared with the received bit in order to check for bit errors
shall only be used by Transmitters in the data-phaseof a CAN FD frame
When the transceiver delay compensation is used,
the Transmitter shall ignore the bit value received at the sample point .

## Page 126

- 126 -
Embedded System Lab
Transceiver Delay Compensation
The position of the secondary sample point (SSP)
TRV_DELAY + an offset
TRV_DELAY value is a node-specific value.
It does not depend on signal propagation times on the CAN bus line.
A configurable offset is added to the measured delay value to place the SSP into the middle of the bits seen at CAN_Rx.

## Page 127

- 127 -
Embedded System Lab
Transceiver Delay Compensation
The position of the secondary sample point
TRV_DELAY + an offset
Rounded down to the next integer number of TQTRV_DELAY + an offset்ொ∗ 𝑇𝑄

## Page 128

- 128 -
Embedded System Lab
Transceiver Delay Compensation
The delay to be compensated, TRV_DELAY ,
shall be measured in each transmitted frame at the falling edge from the EDL bit to the following reserved bit r0, between the edges of the transmitted bit and the received bit.

## Page 129

- 129 -
Embedded System Lab
Transceiver Delay Compensation
The CAN FD controller can perform TRV_DELAY by itself.
The delay is measured (in system clock periods)
by a counter that starts at the beginning of the bit r0 at CAN_Txand                      stops when the edge is seen at CAN_Rx.

## Page 130

- 130 -
Embedded System Lab
Transceiver Delay Compensation
An offset value
Can be determined by setting a register value
e.g. half of the bit time in the data phase

## Page 131

- 131 -
Embedded System Lab
Transceiver Delay Compensation
The position of the secondary sample point
TRV_DELAY + an offset

## Page 132

- 132 -
Embedded System Lab
Transceiver Delay Compensation
The position of the secondary sample point
TRV_DELAY + an offset

## Page 133

- 133 -
Embedded System Lab
Transceiver Delay Compensation
The resulting secondary sample pointmay be placed after the end of the transmitted bit.

## Page 134

- 134 -
Embedded System Lab
Transceiver Delay Compensation
Example
Transceiver’s internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps

## Page 135

- 135 -
Embedded System Lab
Transceiver Delay Compensation
Example
Transceiver’s internal delay time : 200 nsec
Bit rate in the data phase: 10 MbpsWithout transceiver delay compensation,the original sample point for the first bit produces one bit error!“0” timeTx value100nsBus idle100ns“1”“1”“0”Rx valueBus idle“1”“1”Transceiver delay timeOriginalSample point for the first bit  Bit error!……

## Page 136

- 136 -
Embedded System Lab
Transceiver Delay Compensation
Example
Transceiver’s internal delay time : 200 nsec
Bit rate in the data phase: 10 Mbps
With transceiver delay compensation,
The bit value at the secondary sample pointis compared with the transmitted bit value.

## Page 137

- 137 -
Embedded System Lab
Transceiver Delay Compensation
With transceiver delay compensation,
The bit value at the secondary sample pointis compared with the transmitted bit value.“0” timeTx value100nsBus idle100ns“1”“1”“0”Rx valueBus idle“1”“1”Transceiver delay time……Offset
Secondarysample point for the first bit

## Page 138

- 138 -
Embedded System Lab
Transceiver Delay Compensation
With transceiver delay compensation,
The bit value at the secondary sample pointis compared with the transmitted bit value.“0” timeTx value100nsBus idle100ns“1”“1”“0”Rx valueBus idle“1”“1”Secondarysample point for the first bit  OK !……

## Page 139

- 139 -
Embedded System Lab
Transceiver Delay Compensation
If a bit error is detected at the secondary sample point ,
the Transmitter will react to this bit error at the next followingsample point .

## Page 140

- 140 -
Embedded System Lab
Transceiver Delay Compensation
With transceiver delay compensation,
Existing high speed CAN transceivers can transmit and receive bits that are shorter than their loop delay.
In this case, the check for bit errors needs to be delayed until the bit value which is transmitted at the CAN_Tx output is looped back to the CAN_Rx input.

## Page 141

- 141 -
Embedded System Lab
Transceiver Delay Compensation
Receivers do not need this mechanism.
Transmitters apply it in the Data-Phase of a frame.

## Page 142

- 142 -
Embedded System Lab
Transceiver Delay Compensation
When the Transceiver Delay Compensation mechanism is enabled,
it changes the way how a transmitter checks for bit errorsduring the Data-Phase of a CAN FD frame
from {direct comparison of transmitted and received bits at the CAN Sample-Point }
to {a delayed comparison at the SSP}.

## Page 143

- 143 -
Embedded System Lab
Transceiver Delay Compensation
The position of the SSP is always relative to the start of a transmitted bit.
It may be more than one bit time after the end of that bit.
Transmitted bits are buffered until the SSP is reached.
Then their value is compared with the actual value of the input signal to check for bit errors.

## Page 144

- 144 -
Embedded System Lab
Transceiver Delay Compensation
If a bit error is detected,
this information is buffered until the next CAN Sample-Point is reached
the bit rate is switched back to that of the Arbitration-Phase

## Page 145

- 145 -
Embedded System Lab
Transceiver Delay Compensation
When no bit error is detected until the Sample-Point of the CRC Delimiter is reached,
the CAN FD protocol controller
switches back the arbitration phase bit rate and
returns to standard bit error checking.
