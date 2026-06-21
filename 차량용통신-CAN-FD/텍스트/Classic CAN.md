# Classic CAN

- 원본: [Classic CAN.pdf](<../교안/Classic CAN.pdf>)

## Page 1

- 1 -
Embedded System Lab
CAN
전 재 욱Embedded System  연구실성균관대학교

## Page 2

- 2 -
Embedded System Lab
INTRO TO CAN

## Page 3

- 3 -
Embedded System Lab
Introduction to CAN
CAN (Controller Area Network) by Bosch
CAN
Very reliable data transmission
Real-time requirements
Still used in networking ECUs

## Page 4

- 4 -
Embedded System Lab
CAN Bus Networking

## Page 5

- 5 -
Embedded System Lab
Conventional Connection
(Before)

## Page 6

- 6 -
Embedded System Lab
CAN Bus Networking
(After)

## Page 7

- 7 -
Embedded System Lab
CAN Bus Networking
BMW 850 coupe
The first CAN Bus vehicle in 1986

## Page 8

- 8 -
Embedded System Lab
CAN Bus Networking
Application resultReductionVehicle wiring 2kmVehicle overall weight 50kgConnector Half

## Page 9

- 9 -
Embedded System Lab
LAYERS OF CAN

## Page 10

- 10 -
Embedded System Lab
ApplicationLayerPresentationLayerSessionLayerTransportLayerNetworkLayerData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDIISO/OSI Model(ISO 7498O
7654321
Standard and Implementation
Physical Layer√ Bit stream: physical medium, method of representing bitsData Link Layer√ Error detection, flow control on physical linkNetwork Layer√ Network addressing; routing or switchingTransport Layer√ End-to-end error controlSession Layer√ Authentication, permissions, session restorationPresentation Layer√ Coding into 1s and 0s; encryption, compressionApplication Layer√ Message format, Human-Machine Interfaces

## Page 11

- 11 -
Embedded System Lab
ApplicationLayerPresentationLayerSessionLayerTransportLayerNetworkLayerData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical Layer
empty
ISO/OSI Model(ISO 7498OCAN in theISO/OSI Model
7654321
Standard and Implementation

## Page 12

- 12 -
Embedded System Lab
Physical layer
The way in which the signal is transmitted
PLS (physical signaling)
PMA (physical medium attachment)
PMS (physical medium specification)
MDI (medium-dependent interface)Data LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21

## Page 13

- 13 -
Embedded System Lab
Physical layer
PLS (physical signaling)
Bit representation (coding, timing, etc.)
Bit synchronizationData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21

## Page 14

- 14 -
Embedded System Lab
Physical layer
PMA (physical medium attachment)
Driver/receiver characteristicsData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21

## Page 15

- 15 -
Embedded System Lab
Physical layer
PMS (physical medium specification)
application-specific and is not generally standardizedData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21

## Page 16

- 16 -
Embedded System Lab
Physical layer
MDI (medium-dependent interface)
Connectors/wiresData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21

## Page 17

- 17 -
Embedded System Lab
Data link layer
LLC (logical link control)
Message filtering
Overload notification
Error recovery procedureData LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21
MAC (medium access control)
Message framing
Arbitration
Acknowledgement
Error detection
Error signaling

## Page 18

- 18 -
Embedded System Lab
Data LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21
Standard and Implementation
ISO 11898-1StandardsImplementationCANController

## Page 19

- 19 -
Embedded System Lab
MCU (Micro Controller Unit)
MCU (Micro Controller Unit)
Contains CPU core and other modules for implementing ECU (Electronic Control Unit) efficiently
Single core, Multicore
RAM, flash
ADC, PWM, Timer, DMA, …
SCI, LIN, CAN, FlexRay, FECs

## Page 20

- 20 -
Embedded System Lab
MCU (Micro Controller Unit)ADCTimer/CounterSCI
CoreCAN ControllerPWMGPIO
MemorySPIFast Ethernet ControllerFlexRay ControllerDMA
AdditionalCore
Multi core
More than one core

## Page 21

- 21 -
Embedded System Lab
CAN ECU
Core
CAN ControllerMCUECUCAN Transceiver
CAN ECU
MCU
Core
CAN controller
CAN Transceiver

## Page 22

- 22 -
Embedded System Lab
Data LinkLayerPhysicalLayerLLCMACPLSPMAPMSMDICANProtocolCANPhysical LayerISO/OSI Model(ISO 7498OCAN in theISO/OSI Model21
Standard and Implementation
ISO 11898-1ISO 11898-2ISO 11898-3CiA DS-102StandardsCANControllerImplementationCANTransceiverCAN BusConnectorCAN BusMedium
Core
CAN ControllerMCUECUCAN TransceiverHigh Speed CAN TransceiverLow Speed CAN Transceiver

## Page 23

- 23 -
Embedded System Lab
CAN NETWORK

## Page 24

- 24 -
Embedded System Lab
CAN Network
ECU 1…ECU 2ECU n
ECUs connected via a physical transmission medium

## Page 25

- 25 -
Embedded System Lab
Sending A CAN Data Frame
CoreCAN ControllerCAN TransceiverMCUCoreCAN ControllerCAN TransceiverMCUHeaderTaildatadataV0V1V1V0…0 1 1 0 …          SenderReceiver

## Page 26

- 26 -
Embedded System Lab
Receiving A CAN Data Frame
CoreCAN ControllerCAN TransceiverMCUCoreCAN ControllerCAN TransceiverMCUV0V1V1V0…HeaderTaildatadata0 1 1 0 …          ReceiverSender

## Page 27

- 27 -
Embedded System Lab
CAN Network
CoreCAN ControllerCAN TransceiverMCUCoreCAN ControllerCAN TransceiverMCU…dataReceiverSender

## Page 28

- 28 -
Embedded System Lab
CAN Controller
Full CAN controller
Basic CAN controller

## Page 29

- 29 -
Embedded System Lab
Basic CAN Controller
CAN controller without object storage
Final filtering must be done by the application software
i.e. CPU core

## Page 30

- 30 -
Embedded System Lab
Full CAN Controller
CAN controller with object storages
Acceptance filtering

## Page 31

- 31 -
Embedded System Lab
IMPLEMENTATION OF CAN NETWORK

## Page 32

- 32 -
Embedded System Lab
CAN Controller
CAN controller and physical transmission medium are electrically isolated
Although overvoltages on the CAN bus may destroy the CAN transceiver, the CAN controller and the underlying host are preserved

## Page 33

- 33 -
Embedded System Lab
CAN Controller
CAN controller
On-chip
Stand-aloneCore
CAN ControllerMCUECUCAN TransceiverCore
CAN ControllerMCUECUCAN Transceiver

## Page 34

- 34 -
Embedded System Lab
CAN Network
Bus topology
Main LineStub Line

## Page 35

- 35 -
Embedded System Lab
CAN Network
Passive star topology
Stub LineStub LineStub LineStub LineMain LineStub Line

## Page 36

- 36 -
Embedded System Lab
CAN Network
Passive star topology

## Page 37

- 37 -
Embedded System Lab
CAN Network
Passive star topology
<Horii>

## Page 38

- 38 -
Embedded System Lab
CAN Network
An unshielded twisted two-wire line
physical transmission medium used most frequently in applications
Max data rate: 1 Mbit/s
Max network extension: about 40 meters
Bus termination resistors contribute to preventing transient phenomena (reflections).
Max number of CAN nodes: 32
By ISO 11898

## Page 39

- 39 -
Embedded System Lab
Data-Rate/Bus-Length Ratio in CAN Network
<Wilfred Voss>

## Page 40

- 40 -
Embedded System Lab
CAN PHYSICAL LAYER

## Page 41

- 41 -
Embedded System Lab
CAN Interface
Core
CAN ControllerMCUECUCAN Transceiver
CAN interface
CAN controller
CAN transceiver

## Page 42

- 42 -
Embedded System Lab
CAN ECU
Common CAN controller to
high speed CAN (HS CAN)
low speed CAN (LS CAN)
single wire CAN (SW CAN)Core
CAN ControllerCAN TransceiverMCUECU

## Page 43

- 43 -
Embedded System Lab
CAN ECU
CAN Physical Layer Standards
High speed CAN physical layer (ISO 11898-2)
Low speed CAN physical layer (ISO 11898-3)
Single wire CAN physical layer (SAE J2411)CoreCAN ControllerMCUECUCAN Transceiver

## Page 44

- 44 -
Embedded System Lab
CAN Physical Layer Standards
<Philips Semiconductor, AN2005>3.51.5

## Page 45

- 45 -
Embedded System Lab
CAN Transceiver
High speed CAN transceiver
Two differential bus lines
CAN high line (CANH)
CAN low line (CANL)

## Page 46

- 46 -
Embedded System Lab
CAN Transceiver
Low Speed CAN  transceiver
Two differential bus lines
CAN high line (CANH)
CAN low line (CANL)

## Page 47

- 47 -
Embedded System Lab
CAN Transceiver
High speed CAN and Low Speed CAN
Two differential bus lines of a CAN transceiver
CAN high line (CANH)
CAN low line (CANL)Determination of logical value
By voltage difference between CANH and CANL

## Page 48

- 48 -
Embedded System Lab
CAN Transceiver
Single wire CAN
Single wire bus line of a CAN transceiver
CANH
Common Ground

## Page 49

- 49 -
Embedded System Lab
CAN BUS LEVEL

## Page 50

- 50 -
Embedded System Lab
CAN Bus
Transmission medium (CAN bus)
CAN high line (CANH)
CAN low line (CANL)
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU

## Page 51

- 51 -
Embedded System Lab
CAN Bus
Signal transmission in a (HS & LS) CAN
Transmission of differential voltages
(differential signal transmission)Effectively eliminates the negative effects of interference voltage
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU

## Page 52

- 52 -
Embedded System Lab
CAN Bus
Interference voltages in cars
Can be induced by motors, ignition systems, and switch contacts

## Page 53

- 53 -
Embedded System Lab
CAN Bus
VH
The voltage on the CAN high line (without noise)
VL
The voltage on the CAN low line (without noise)
If noise occurs, both voltages may be changed similarly
VH  + ΔV
VL  + ΔV
So, the voltage difference is the same as in no noise
(VH  + ΔV) – (VL  + ΔV) =  VH  –VL

## Page 54

- 54 -
Embedded System Lab
CAN Bus (High Speed CAN, ISO 11898-2)
Max data rate of 1 Mbps
500 Kbps
Termination resistors
Prevents reflections in a high-speed CAN network.
Key parameter for the bus termination resistor
Characteristic impedance of the electrical line
120 Ohm

## Page 55

- 55 -
Embedded System Lab
CAN Bus (Low Speed FT CAN, ISO 11898-3)
Max data rate of 125 Kbps
Low speed CAN (ISO 11898-3)
Not specify any bus termination resistors.
Fault-Tolerant CAN
Designed to withstand opens, shorts, and incorrect loads on one of the CAN data lines, falling back to a single data line when a fault is encountered.
To preserve network functionality where a data line fails,
Two resistors at each ECU

## Page 56

- 56 -
Embedded System Lab
CAN Bus (Single Wire CAN, SAE J2411)
Max data rate of 33.3 Kbps (or 83.3 Kbps)
Single wire CAN (SAE J2411)
Not specify any bus termination resistors
One resistor at each ECU

## Page 57

- 57 -
Embedded System Lab
CAN Bus Levels
Physical signal transmission in a CAN network
High-speed CAN bus interface (ISO 11898-2)
Low-speed CAN bus interface (ISO 11898-3)
Single wire CAN bus interface (SAE J2411)

## Page 58

- 58 -
Embedded System Lab
High-Speed CAN Bus Levels
VHVL

## Page 59

- 59 -
Embedded System Lab
High-Speed CAN Bus Levels
2.0V0VLogical “0”Logical “1”Logical “1”RecessiveRecessiveDominant
VHVLVH  –VL

## Page 60

- 60 -
Embedded System Lab
High-Speed CAN Bus Levels
VH
The voltage on the CAN high line
VL
The voltage on the CAN low line
High-speed CAN bus interface (ISO 11898-2)
A differential voltage : VH  –VL
2 Volt logical “0”, dominant
0 Volt logical “1”, recessive

## Page 61

- 61 -
Embedded System Lab
High-Speed CAN Bus Levels
Logical “0”Logical “1”Logical “1”
VHVLVH  –VL

## Page 62

- 62 -
Embedded System Lab
High-Speed CAN Bus Levels
A differential voltage : VH  –VL
VH  –VL≥ 0.9Volt logical “0”, dominant
VH  –VL≤ 0.5 Volt logical “1”, recessive

## Page 63

- 63 -
Embedded System Lab
Dominant and Recessive in CAN Network
Dominant
Logical “0”
Recessive
Logical “1”

## Page 64

- 64 -
Embedded System Lab
Dominant and Recessive in CAN Network
Suppose that
All ECUs send logical “1” values to the CAN bus simultaneously
Then, the resultant logical value on the CAN bus
Logical “1”123456“1”“1”“1”“1”“1”“1”“1”

## Page 65

- 65 -
Embedded System Lab
Dominant and Recessive in CAN Network
Suppose that
ECU1 and ECU3 send logical “0”,while the other ECUs send logical “1” simultaneously
Then the resultant logical value on the CAN bus
Logical “0”123456“1”“1”“1”“1”“0”“0”“0”

## Page 66

- 66 -
Embedded System Lab
Dominant and Recessive in CAN Network
If one ECU sends logical “0” to the CAN bus
Then the logical value on the CAN bus is always “0”regardless of logical values sent by the other ECU 123456“X”“X”“X”“X”“X”“0”“0”X: Don’t care condition

## Page 67

- 67 -
Embedded System Lab
Dominant and Recessive in CAN Network
That is, at the same time
ECU 1 transceiver 3.5 volt and 1.5 volt to CAN bus lines
ECU 2 transceiver  2.5 volt and 2.5 volt to CAN bus lines
ECU 3 transceiver 2.5 volt and 2.5 volt to CAN bus lines
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECU 1ECUCoreCAN ControllerCAN TransceiverMCUECU 2CoreCAN ControllerCAN TransceiverMCUECU 3
3.5 volt 2.5 volt 2.5 volt 1.5 volt2.5 volt2.5 volt

## Page 68

- 68 -
Embedded System Lab
Dominant and Recessive in CAN Network
Then
Voltages of CAN bus lines3.5 volt and 1.5 volt
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECU 1ECUCoreCAN ControllerCAN TransceiverMCUECU 2CoreCAN ControllerCAN TransceiverMCUECU 3
3.5 volt 1.5 volt

## Page 69

- 69 -
Embedded System Lab
Dominant and Recessive in CAN Network
Circuits of CAN Transceivers
are implemented such that they satisfy this rule.

## Page 70

- 70 -
Embedded System Lab
High Speed CAN Transceiver (NXP TJA1041)

## Page 71

- 71 -
Embedded System Lab
TxD and RxD in CAN Transceiver
TxD and RxD pins
Two pins between CAN controller and transceiverECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUTxDRxD

## Page 72

- 72 -
Embedded System Lab
TxD and RxD in CAN Transceiver
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU

## Page 73

- 73 -
Embedded System Lab
TxD and RxD in CAN Transceiver
TxD and RxD pin
ECUECUECUCoreCAN TransceiverMCUECUCAN ControllerECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU
TxDRxDTxDRxDTxDRxD

## Page 74

- 74 -
Embedded System Lab
High Speed CAN Transceiver (NXP TJA1041)

## Page 75

- 75 -
Embedded System Lab
CANH and CANL in CAN Transceiver
CANH and CANL pins
Two pins between CAN transceiver and CAN bus linesECUECUCoreCAN ControllerCAN TransceiverMCUECUTxDRxDCAN high lineCAN low lineCANHCANL

## Page 76

- 76 -
Embedded System Lab
High Speed CAN Transceiver (NXP TJA1041)CoreCAN ControllerMCU

## Page 77

- 77 -
Embedded System Lab
High Speed CAN Transceiver (NXP TJA1050)

## Page 78

- 78 -
Embedded System Lab
CAN ECU
CoreCAN ControllerMCUECU

## Page 79

- 79 -
Embedded System Lab
3.3V CAN Transceiver
High speed CAN bus level in 3.3V CAN transceiver
Logical “0”Logical “1”

## Page 80

- 80 -
Embedded System Lab
Low-Speed (Fault-Tolerant) CAN Bus Levels
Logical “0”Logical “1”

## Page 81

- 81 -
Embedded System Lab
Low-Speed CAN Bus Levels
Low-speed bus interface (ISO 11898-3)
A differential voltage : VH  –VL
VH  –VL= 2 Volt logical “0”, dominant
VH  –VL= –5 Volt logical “1”, recessive

## Page 82

- 82 -
Embedded System Lab
Low-Speed CAN Bus Levels
A differential voltage : VH  –VL
VH  –VL> 0 Volt logical “0”, dominant
VH  –VL< 0 Volt logical “1”, recessive

## Page 83

- 83 -
Embedded System Lab
Low-Speed CAN Transceiver (ON Semiconductor AMIS-4168x)

## Page 84

- 84 -
Embedded System Lab
CAN Transceiver
Low Speed CAN  transceiver

## Page 85

- 85 -
Embedded System Lab
Single Wire CAN Bus Levels

## Page 86

- 86 -
Embedded System Lab
Single Wire CAN Bus Levels
Single wire CAN bus interface (SAE J2411)
VH  = 4.0 Volt logical “0”, dominant
VH  = 0.1 Volt logical “1”, recessive

## Page 87

- 87 -
Embedded System Lab
Single Wire CAN Bus Levels
VH ≥ 3.4 Volt logical “0”, dominant
VH  ≤1.6 Volt  logical “1”, recessive

## Page 88

- 88 -
Embedded System Lab
Singe Wire Transceiver (NXP AU5790)

## Page 89

- 89 -
Embedded System Lab
TWISTED PAIR

## Page 90

- 90 -
Embedded System Lab
Crosstalk

## Page 91

- 91 -
Embedded System Lab
Shielded Cable
Can reduce
electrical noise interference
electromagnetic emission
crosstalk between cables near each other
Expensive

## Page 92

- 92 -
Embedded System Lab
Unshielded Cable
Less robust than shielded cable
Cheaper than shielded cable

## Page 93

- 93 -
Embedded System Lab
Unshielded Twist Pair
Twisting wires in differential transmissionscan reduce
Electrical noise interference
Electromagnetic emissionmore than untwisting wires do

## Page 94

- 94 -
Embedded System Lab
Twisted Pair
VH
The voltage on the CAN high line (without noise)
VL
The voltage on the CAN low line (without noise)
If noise occurs in twisted pair,
its effect is similar on two wires
i.e.  both voltages may be changed similarlyVH  + ΔV (rather than VH)VL  + ΔV (rather than VL)
So, the voltage difference is the same as in no noise
(VH  + ΔV) – (VL  + ΔV) =  VH  –VL

## Page 95

- 95 -
Embedded System Lab
Twisted Pair
Number of wraps in twisted pair
At least 30 wraps per meter

## Page 96

- 96 -
Embedded System Lab
CAN Bus
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU

## Page 97

- 97 -
Embedded System Lab
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU
CAN Bus

## Page 98

- 98 -
Embedded System Lab
CAN Network
An unshielded twisted two-wire line
Less robust to noise than shielded lines
Cheaper than shielded lines
Physical transmission medium used most frequently

## Page 99

- 99 -
Embedded System Lab
TERMINATION

## Page 100

- 100 -
Embedded System Lab
CAN Network
Bus topology
Termination resistors
Preventing transient phenomena (reflections)ECUECUECU

## Page 101

- 101 -
Embedded System Lab
CAN Network
Passive star topology
Termination resistors
In main line ONLY
ECUECUECUECUECUECUMain LineStub LineStub Line

## Page 102

- 102 -
Embedded System Lab
CAN Network
With termination resistors
Sending  a signal                     at “A”,A
AECUECUECU

## Page 103

- 103 -
Embedded System Lab
CAN Network
With termination resistors
The same shape signal                    occurs at “B”BECUECUECU

## Page 104

- 104 -
Embedded System Lab
CAN Network
Without termination resistors,
ECUECUECU

## Page 105

- 105 -
Embedded System Lab
CAN Network
Without termination resistors
Because of reflection,   a distorted signal                    occurs at “B”
BECUECUECU

## Page 106

- 106 -
Embedded System Lab
Termination
For preventing the reflection,
high-Speed CAN networks must be terminated with the characteristic impedance of the physical transmission medium
Characteristic impedance of the physical transmission medium
120 Ohm

## Page 107

- 107 -
Embedded System Lab
ECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU
CAN Bus

## Page 108

- 108 -
Embedded System Lab
Split Bus Termination
ECUECUECU

## Page 109

- 109 -
Embedded System Lab
Split Bus Termination
A split bus termination
two identical resistors (~60 Ω±1% )
one capacitor (typically 4.7 nF for high speed CAN)Acts like a low-pass filter
can improve noise immunity and reduce emissions

## Page 110

- 110 -
Embedded System Lab
Split Pin in A High Speed Transceiver
Some high speed transceivers have a SPLIT pin
Stabilization of the recessive voltage level on the bus
Reduce electromagnetic emission in networks

## Page 111

- 111 -
Embedded System Lab
Split Pin in A High Speed Transceiver

## Page 112

- 112 -
Embedded System Lab
High Speed CAN
Termination with with the characteristic impedance of the physical transmission medium
Characteristic impedance: 120 Ohm
Max data rate: 1Mbps (500 Kbps)
ECUECUECU

## Page 113

- 113 -
Embedded System Lab
Low Speed (Fault Tolerant) CAN
Overall RTH: 100 – 500 Ω
Individual RTH: 500 Ω – 16KΩ
Max data rate: 125Kbps

## Page 114

- 114 -
Embedded System Lab
Single Wire CAN
RTH: 9.09 KΩ
Normal data rate: 33.3 Kbps
83.3 Kbps diagnostic mode

## Page 115

- 115 -
Embedded System Lab
BIT CODING

## Page 116

- 116 -
Embedded System Lab
Bit Coding
Bit coding
Logical “0”  and “1” which physical voltages?

## Page 117

- 117 -
Embedded System Lab
Bit Coding
Bit coding must be able to
reduce radiated emissions significantly
be also harmonized with a required capacity

## Page 118

- 118 -
Embedded System Lab
Bit Coding
RZ(Return to Zero) Coding
NRZ (Non Return to Zero) coding

## Page 119

- 119 -
Embedded System Lab
Bit Coding
RZ(Return to Zero) Coding
The signal drops (returns) to zero btw each pulse
Self-clocking

## Page 120

- 120 -
Embedded System Lab
Bit Coding
One example of RZ coding
Logical “1” 
Logical “0” 00

## Page 121

- 121 -
Embedded System Lab
Bit Coding
One example of RZ coding
11010010

## Page 122

- 122 -
Embedded System Lab
Bit Coding
One example of RZ coding
11010010011010010

## Page 123

- 123 -
Embedded System Lab
Bit Coding
NRZ (Non Return to Zero) coding
Logical ‘1’ by one condition
Logical ‘0’ by the other condition
No other neutral or rest condition
Not self-clocking

## Page 124

- 124 -
Embedded System Lab
Bit Coding in CAN
CAN
NRZ bit coding
Binary signals to be transmitted are mapped directly
Logical “1” to a high level
Logical “0” to a low level
0 V5 V

## Page 125

- 125 -
Embedded System Lab
Sending A CAN Data Frame
CoreCAN ControllerCAN TransceiverMCUCoreCAN ControllerCAN TransceiverMCUdataSenderReceiver1.5V   2.5V   2.5V 1.5V … 3.5V   2.5V   2.5V 3.5V …0V  5V  5V 0V …          0  1  1  0  …          HeaderTaildata

## Page 126

- 126 -
Embedded System Lab
NRZ Coding
Advantage
Consecutive bits of the same polarity exhibit no level changes
Very high data rates
Emissions within limits
Disadvantage
Not  self-clocking;
NRZ does not have any synchronization properties
If no level change occurs over a longer period of time,the receiver may lose synchronizationNRZ coding requires an explicit synch mechanism
which reduces transmission efficiency

## Page 127

- 127 -
Embedded System Lab
NRZ Coding in CAN
Synchronization mechanism in CAN (of NRZ coding)
bit stuffing method
Bit stuffing method
After five homogeneous bits,
the sender inserts a complementary bit in the bit stream

## Page 128

- 128 -
Embedded System Lab
NRZ Coding in CAN
Bit stuffing method
Example 1
Suppose one CAN controller wants to send0000001 …
Then it will send00000 1 01 …1  2  3  4  5

## Page 129

- 129 -
Embedded System Lab
NRZ Coding in CAN
Bit stuffing method
Example 2
Suppose one CAN controller wants to send00000001111100 …Then it will send0000010011111000 …1  2  3  4  51  2  3  4  5

## Page 130

- 130 -
Embedded System Lab
NRZ Coding in CAN
Bit stuffing method
Example 3
Suppose one CAN controller wants to send... 0000011110000110 …Then it will send... 00000 1 1111 0 0000 1 110 …1  2  3  4  5

## Page 131

- 131 -
Embedded System Lab
CAN IDENTIFIER

## Page 132

- 132 -
Embedded System Lab
Identifier in CAN Data Frame
CAN data frame
Identifier
Not the destination of CAN frame
But describes the meaning of the data
e.g. Engine rpm, Engine temperature, Transmission stage, …
HeaderTaildataTaildataID

## Page 133

- 133 -
Embedded System Lab
Identifier in CAN Data Frame
CAN frame contains
NOT address
BUT identifier

## Page 134

- 134 -
Embedded System Lab
Identifier in CAN Data Frame
Message routing
The meaning of a message is marked by an identifier.
So, each ECU can decide whether or not the message carried on the bus is relevant to itby acceptance filtering
System flexibility
In a CAN network,
an ECU does not have to consider information relating to the configuration of the system

## Page 135

- 135 -
Embedded System Lab
Example of One Identifier
A CAN network
12 ECUs in 5 groups
17 sensors in ECU1
Suppose that ECU1 sends one CAN data frame
containing one sensor value connected to ECU1123456789101112
Group AGroup BGroup CGroup DGroup E
TaildataID

## Page 136

- 136 -
Embedded System Lab
Example of One Identifier
A CAN network
12 ECUs in 5 groups
17 sensors in ECU1
11bits of identifier123456789101112
Group AGroup BGroup CGroup DGroup ETaildataIDWhich group? Which ECU? Which sensor?3 bits 3 bits 5 bits

## Page 137

- 137 -
Embedded System Lab
CAN COMMUNICATION

## Page 138

- 138 -
Embedded System Lab
Types of Communication
Unicast
Multicast
Broadcast

## Page 139

- 139 -
Embedded System Lab
Unicast
A frame is sent from one ECU to another ECU.
One sender and one receiver

## Page 140

- 140 -
Embedded System Lab
Multicast
A frame is sent from one ECU to several ECUs
One sender and muti (several) receivers

## Page 141

- 141 -
Embedded System Lab
Broadcast
A frame is sent from one ECU to all of the other ECUs
One sender and all (of the other) receivers

## Page 142

- 142 -
Embedded System Lab
Parcel Delivery
One sender & one receiver
Sender determines its corresponding receiver by an address
Unicast

## Page 143

- 143 -
Embedded System Lab
CAN Data frame Delivery
One sender & (maybe) several receivers
A frame can be used to address a group of ECU simultaneously
Multicast

## Page 144

- 144 -
Embedded System Lab
CAN Communication Principle
One CAN frame
Does NOT include its destination address
BUT includes one identifier (ID) instead of address
Sender
Does NOT determine its corresponding receiver

## Page 145

- 145 -
Embedded System Lab
CAN Communication Principle
Block diagram of CAN controllerCoreCAN ControllerCAN TransceiverMCUECUCoreMCUECUTX BufferRX BufferAcceptanceFilteringSendReceiveCAN ControllerCAN Transceiver

## Page 146

- 146 -
Embedded System Lab
CAN Communication Principle
One CAN networkCoreCAN ControllerCAN TransceiverMCUECU 1CoreCAN ControllerCAN TransceiverMCUECU 2CoreCAN ControllerCAN TransceiverMCUECU 3CoreCAN ControllerCAN TransceiverMCUECU 4

## Page 147

- 147 -
Embedded System Lab
CAN Communication Principle
One CAN networkCoreMCUECU 1CoreMCUECU 3
TX BufferRX BufferAcceptanceFilteringSendReceiveCoreMCUECU 2CAN ControllerTX BufferRX BufferAcceptanceFilteringSendReceiveCAN ControllerTX BufferRX BufferAcceptanceFilteringSendReceiveCAN ControllerCoreMCUECU 4TX BufferRX BufferAcceptanceFilteringSendReceiveCAN Controller

## Page 148

- 148 -
Embedded System Lab
Example 1
Suppose that ECU1 sends one data frame of ID=0x 1A.
ID = (000 0001 1010)21234

## Page 149

- 149 -
Embedded System Lab
Example 1 (Unicast)
Sender
ECU1 sends one data frame of ID=0x 1A
ID = (000 0001 1010)2
Receiver
ECU2 will extract the information of the data frame1234

## Page 150

- 150 -
Embedded System Lab
Example 2
Suppose that ECU2 sends one data frame of ID=0x 3C.
ID = (000 0011 1100)21234

## Page 151

- 151 -
Embedded System Lab
Example 2 (Multicast)
Sender
ECU2 sends one data frame of ID=0x 3C
ID = (000 0011 1100)2
Receiver
ECU1 and ECU4 will extract the information1234

## Page 152

- 152 -
Embedded System Lab
Example 3
Suppose that ECU3 sends one data frame of ID = 0x7A1.
ID = (111 1010 0001)21234

## Page 153

- 153 -
Embedded System Lab
Example 3 (Broadcast)
Sender
ECU3 sends one data frame of ID=0x 7A1
Receiver
All ECUs (ECU1, ECU2, and ECU4) will extract the information1234

## Page 154

- 154 -
Embedded System Lab
CAN Communication Principle
Receiver-selectivemethod
Sender does NOT know its corresponding receiver1246?35????

## Page 155

- 155 -
Embedded System Lab
CAN Communication Principle
Receiver-selectivemethod
Other ECUs (except sender) will determine the extraction of information depending on ID & acceptance filtering124635

## Page 156

- 156 -
Embedded System Lab
Receiver Selective Method
Increase configuration flexibility123

## Page 157

- 157 -
Embedded System Lab
Receiver Selective Method
Increase configuration flexibility
Integration of ECU 4 without modification of existing ECU1, ECU2, and ECU31234

## Page 158

- 158 -
Embedded System Lab
CSMA/CR

## Page 159

- 159 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution

## Page 160

- 160 -
Embedded System Lab
Media Access Control in CAN
Multi master
Each ECU has the right to access the CAN bus
without requiring permission
without prior coordination with other CAN ECUs
Decentralized bus access

## Page 161

- 161 -
Embedded System Lab
Media Access Control in CAN
“Free” (or “Idle”) bus
No frame is being sent now on the CAN busAny ECU can start its transmission now.

## Page 162

- 162 -
Embedded System Lab
Media Access Control in CAN
“Busy” bus
One frame is being sent now
No ECU can start its transmission at this moment.
After the current transmission is over and its interframe space, it is allowed for some ECU to start to send its frame.

## Page 163

- 163 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Carrier Sense
If one ECU wants to send one frame,it must check whether the bus is “free”
If the bus is “free”, this ECU can start to send its frame

## Page 164

- 164 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Carrier Sense
If one ECU wants to send one frame,it must check whether the bus is “free”
If the bus is “free”, this ECU can start to send its frame
Otherwise (i.e. bus is “busy”), this ECU must wait until the current transmission and its interframe space are over.

## Page 165

- 165 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
There exist 6 ECUs on a CAN bus123456

## Page 166

- 166 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
One frame starts to be sent from t1.
Current CAN framet1 123456time

## Page 167

- 167 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
One frame starts to be sent from t1.
ECU1 wants to send its frame at t3.Then it needs to listen the shared medium before starting to send it.–Carrier senseBecause the CAN bus is busy at t3,ECU1 cannot start to send its frame immediatelyCurrent CAN framet1t31√t2IFS time

## Page 168

- 168 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
One frame starts to be sent from t1.
ECU1 wants to send its frame at t3.ECU1 cannot start to send it until the CAN bus is free.This occurs after the interframe space expires.–ECU1 monitors the CAN bus (Carrier Sense) to detect this.ECU 1 must wait until t2.Current CAN framet1t31√t2IFSCarrier sense by ECU1time

## Page 169

- 169 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
One frame starts to be sent from t1.
ECU1 wants to send its frame at t3.It must wait until t2
ECU3 wants to send its frame at t4. (t1< t3< t4< t2) It must wait until t2Current CAN framet1t43t31√√t2IFSCarrier sense by ECU3timeCarrier sense by ECU1

## Page 170

- 170 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose
One frame starts to be sent from t1.
ECU1 wants to send its frame at t3.It must wait until t2
ECU3 wants to send its frame at t4.It must wait until t2
ECU4 wants to send its frame at t5. (t1< t3< t4< t5< t2) It must wait until t2Current CAN framet1t54t43t31√√√t2IFSCarrier sense by ECU4Carrier sense by ECU3Carrier sense by ECU1time

## Page 171

- 171 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
More than one ECU may start to send their frames simultaneously.
Then, at t2,
ECU1, ECU3, and ECU4 start to send their frames simultaneously.Collision occurs!123456Current CAN framet1t54t43t31t2IFS time

## Page 172

- 172 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
At t2,
ECU1, ECU3, and ECU4 start to send their frames simultaneously.Collision occurs!
Suppose ID3 < ID1 and ID3 < ID4 (numerically).
Then frame3 has higher priority than frame1 and frame4.123456frame1frame3ID3frame4ID4ID1

## Page 173

- 173 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Then, frame3 will be sent
That is, ECU3 will gain access to the bus and transmit its frameECU1 and ECU4 will relinquish to send and wait after the frame3 transmission is over and the next interframe space expires.123456frame3ID3

## Page 174

- 174 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
ECU3 can start to send frame3 at t2.
ECU1 and ECU 4 must wait their transmissions until t6This occurs after the next inter frame space expires.ECU1 and ECU4 monitor the CAN bus (Carrier Sense) to detect this.Current CAN framet1t5t4t3t2IFSFrame3 by ECU 3IFSCarrier sense by ECU 4Carrier sense by ECU 1t6time

## Page 175

- 175 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Suppose that no other ECUs want to send their frames from t2to  t6(except ECU1 and ECU4 )Current CAN framet1t5t4t3t2IFSFrame3 by ECU 3IFSt6timeCarrier sense by ECU 4Carrier sense by ECU 1

## Page 176

- 176 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Then, at t6,
ECU1 and ECU4 start to send their frames simultaneously.Collision occurs!Current CAN framet1t5t4t3t2IFSFrame3 by ECU 3IFSt641time

## Page 177

- 177 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
At t6,
ECU1 and ECU4 start to send their frames simultaneously.Collision occurs!
Suppose ID4 < ID1 (numerically).
Then frame4 has higher priority than frame1.123456frame1frame4ID4ID1

## Page 178

- 178 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
Then, frame4 will be sent
That is, ECU4 will gain access to the bus and transmit its frameECU1 will relinquish to send and wait after the frame4 transmission is over and the next interframe space expires.123456frame4ID4

## Page 179

- 179 -
Embedded System Lab
Media Access Control in CAN
CSMA/CR
Carrier Sense Multiple Access/Collision Resolution
ECU4 can start to send frame4 at t6.
ECU1 must wait its transmissionsafter the next inter frame space expires.ECU1 monitor the CAN bus (Carrier Sense) to detect this.Current CAN framet1t5t4t3t2IFSFrame3 by ECU 3IFSt6Frame4 by ECU4IFSCarrier sense by ECU 1

## Page 180

- 180 -
Embedded System Lab
PRIORITY OF CAN FRAME

## Page 181

- 181 -
Embedded System Lab
Priority of CAN Frame
The identifier defines a static priority of one frame.
(Numerically) Lower identifier, higher priority

## Page 182

- 182 -
Embedded System Lab
Priority of CAN Frame
Suppose ECU1, ECU3, and ECU4 start to send their frames simultaneously.
ID1  =  (010 1111 0101)2
ID3  =  (010 1100 1101)2
ID4  =  (011 0011 0001)2123456frame1frame3ID3frame4ID4ID1

## Page 183

- 183 -
Embedded System Lab
Priority of CAN Frame
Suppose ECU1, ECU3, and ECU4 start to send their frames simultaneously.
ID1  =  (010 1111 0101)2
ID3  =  (010 1100 1101)2
ID4  =  (011 0011 0001)2
Numerically, ID3 is the lower than ID1 and ID4The priority of frame3 is the higherECU3 is the winner.123456frame3ID3

## Page 184

- 184 -
Embedded System Lab
Concept of Bus Access
Multi-master architecture
Each ECU in the CAN network has the right to access the CAN bus
without requiring permission
without prior coordination with other CAN ECUs
More than one ECU may access the CAN bus simultaneously.
That is, more than one ECU may start to send their frames simultaneously.

## Page 185

- 185 -
Embedded System Lab
Concept of Bus Access
In case of simultaneous bus access,
Highest priority CAN frame will be sent
The higher the priority of a CAN frame, the sooner it can be transmitted on the CAN bus.
In case of poor system design, low priority CAN frames even run the risk of never being transmitted.

## Page 186

- 186 -
Embedded System Lab
Concept of Bus Access
Arbitration
Selection of one ECU which will start to send its framein case of simultaneous bus access
Bitwise arbitration

## Page 187

- 187 -
Embedded System Lab
CAN FRAME TYPES

## Page 188

- 188 -
Embedded System Lab
Message Transfer
Data frames
Remote frames
Error frames
Overload frames

## Page 189

- 189 -
Embedded System Lab
Message Transfer
Data frames
Transport the data (i.e. information) from one sender to receiversHeaderTaildata

## Page 190

- 190 -
Embedded System Lab
Message transfer
Remote frames
Sent by an ECU active on the bus
To request the transmission of a data frame
whose identifier has the same value as that of the remote frame
No data (i.e. information) are included in remote framesHeaderTail

## Page 191

- 191 -
Embedded System Lab
Message transfer
Error frames
Transmitted by any ECU present on the bus as soon as an error is detected on the bus
Active & passive error frames

## Page 192

- 192 -
Embedded System Lab
Message transfer
Error frames
Transmitted by any ECU present on the bus as soon as an error is detected on the bus
Active & passive error frames0  0  0  0  0  01  1  1  1  1  1  1  1Active error flagError delimiterActive error frame

## Page 193

- 193 -
Embedded System Lab
Message transfer
Error frames
Transmitted by any ECU present on the bus as soon as an error is detected on the bus
Active & passive error frames
1  1  1  1  1  11  1  1  1  1  1  1  1Passive error flagError delimiterPassive error frame

## Page 194

- 194 -
Embedded System Lab
Message transfer
Overload frames
To request a supplementary time interval between the preceding and following frames0  0  0  0  0  01  1  1  1  1  1  1  1Overload frame

## Page 195

- 195 -
Embedded System Lab
Message transfer
Interframe space (IFS)
Separate in time {the current frame} from    {the preceding frame}
Minimum 3bits in CANThe 1stframeIFSThe 2ndframeIFSThe 3rdframeIFS

## Page 196

- 196 -
Embedded System Lab
BIT STUFFING

## Page 197

- 197 -
Embedded System Lab
Bit stuffing
After 5 bits of identical value
Deliberately introduce (at the transmission ECU) one additional opposite value bit  to ‘break the rhythm’

## Page 198

- 198 -
Embedded System Lab
Sending A CAN Data Frame
CoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECUHeaderTaildatadata

## Page 199

- 199 -
Embedded System Lab
Frame to be transmitted, before stuffing
Frame with stuffing
“1  1 0  0  0  0  0  1 0  1” will be transmitted.
Bit stuffing
1 1  0  0  0  0  0  0  11 1  0  0  0  0  0  1 0  1

## Page 200

- 200 -
Embedded System Lab
Frame to be transmitted, before stuffing
Frame with stuffing
Frame destuffed on reception
Bit stuffing
1 1  0  0  0  0  0      0  1

## Page 201

- 201 -
Embedded System Lab
Range of Bit stuffing
HeaderTaildataBit stuffing range
In data frames and remote frames
HeaderTailBit stuffing rangedata frame remote frame

## Page 202

- 202 -
Embedded System Lab
Range of Bit stuffing

## Page 203

- 203 -
Embedded System Lab
Range of Bit stuffing
(In data frames and remote frames)
Range of bit stuffing
Start of frame (SOF), arbitration field, control field, data field, CRC sequence
No bit stuffing
CRC delimiter, ACK slot, ACK delimiter, End of frame (EOF)SOFEOFRTRACKDelID ACKSlotCRCSequenceCRCDelDataControl Fieldr1r0DLCData frameBit Stuffing

## Page 204

- 204 -
Embedded System Lab
Bit stuffing
Error and overload frames
fixed structures
No bit stuffing

## Page 205

- 205 -
Embedded System Lab
Purpose of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization of communication partners

## Page 206

- 206 -
Embedded System Lab
Purpose of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization of communication partners
Disadvantage of NRZ coding
Not  self-clocking;
NRZ does not have any synchronization properties
If no level change occurs over a longer period of time,the receiver may lose synchronization

## Page 207

- 207 -
Embedded System Lab
Purpose of Bit stuffing
A basic prerequisite for correct data transmission
Synchronization of communication partners
Disadvantage of NRZ coding
Not  self-clocking;
NRZ does not have any synchronization properties
If no level change occurs over a longer period of time,the receiver may lose synchronization
So, bit stuffing is necessary for resynchronization

## Page 208

- 208 -
Embedded System Lab
Purpose of Bit stuffing
Resynchronization
Only occur on recessive-to-dominant edges.
Bit stuffing
Max 10 bits between resynchronization
0    0    0    0    01    1    1    1    10

## Page 209

- 209 -
Embedded System Lab
Max Number of Bit Stuffing
Because of bit stuffing (from SOF to CRC sequence)
Max number of stuff bits in a standard data frame of 8 byte data field
24 bits
The theoretically longest standard data frame
132 bit

## Page 210

- 210 -
Embedded System Lab
STANDARD DATA FRAME IN CAN

## Page 211

- 211 -
Embedded System Lab
Standard Data frame
SOFEOFRTRACKDelID ACKSlotCRCSequenceCRCDelDataControl Fieldr1r0DLCHeaderTail

## Page 212

- 212 -
Embedded System Lab
Start of Frame (SOF)
A single dominant bit
Signaling to all receivers the start of an exchangedataSOFEOF1 bit“0”

## Page 213

- 213 -
Embedded System Lab
Start of Frame (SOF)
A falling edge
from the previous recessive (bus idle) level to the dominant level (SOF)
is used to synchronize the entire networkBefore SOFLogical “1”SOFLogical “0”
Falling edge

## Page 214

- 214 -
Embedded System Lab
Start of Frame (SOF)
All ECUs (except the sender)
must be fully synchronized with each other before the start bit can pass
with using the falling edge123456

## Page 215

- 215 -
Embedded System Lab
Standard Data frame
Arbitration fieldSOFEOFRTRIDDataArbitrationfield11 bits1 bit

## Page 216

- 216 -
Embedded System Lab
Arbitration Field
When collision occurs,
one CAN frame will be selected by the arbitration field
Arbitration field
Identifier bits (ID)
Sets the priority of the data frame
RTR (remote transmission request) bit
The higher priority of the data frame than its corresponding remote frame with the same ID

## Page 217

- 217 -
Embedded System Lab
Identifier
Describes the meaning of the data
e.g. Engine rpm, Engine temperature, Transmission stage, …
Acceptance filtering
Receiver-selective
Sets the priority of the data frameTaildataID

## Page 218

- 218 -
Embedded System Lab
Identifier
ID sets the priority of the data frame
11 bits
Transmitting from ID_10 (MSB) to ID_0 (LSB)
7 most significant bits(From ID_10 to ID_4) must not all be recessive
ID =  11  11  11  1x  xx xSOFRTRID10IdentifierID9ID8ID7ID6ID5ID4ID3ID2ID1ID0MSBLSB

## Page 219

- 219 -
Embedded System Lab
Identifier
ID sets the priority of the data frame
11 bits
Transmitting from ID_10 to ID_0 (least significant)
7 most significant bits(From ID_10 to ID_4) must not all be recessive
ID =  11  11  11  1x  xx x
The max combinations:
211- 24=  2048  - 16  =  2032

## Page 220

- 220 -
Embedded System Lab
RTR Bit
Remote transmission request
RTR bit is used by the sender to inform receivers of the frame type
data frame or remote frame

## Page 221

- 221 -
Embedded System Lab
RTR Bit
Remote transmission request
RTR bit is used by the sender to inform receivers of the frame type
data frame or remote frame
In a data frame,
Dominant RTR bit
RTR = “0” (dominant) “false”
No request for remote transmission data frame

## Page 222

- 222 -
Embedded System Lab
RTR Bit
Remote transmission request
RTR bit is used by the sender to inform receivers of the frame type
data frame or remote frame
In a remote frame,
Recessive RTR bit
RTR = “1” (recessive) “true”
Request for remote transmission remote frame

## Page 223

- 223 -
Embedded System Lab
Arbitration
Suppose ECU2, ECU3, and ECU4 start to send their frames simultaneously.1234frame2frame3frame4

## Page 224

- 224 -
Embedded System Lab
Arbitration
Suppose ECU2, ECU3, and ECU4 start to send their frames simultaneously.
ID2  =  101  1110  0011,  RTR = 0  (data frame)
ID3  =  101  0100  0100,  RTR = 1  (remote frame)
ID4  =  101  0100  0100,  RTR = 0  (data frame)1234frame2frame3ID3frame4ID4ID2

## Page 225

- 225 -
Embedded System Lab
Arbitration
Suppose ECU2, ECU3, and ECU4 start to send their frames simultaneously.
ID2  =  101  1110  0011,  RTR = 0  (data frame)
ID3  =  101  0100  0100,  RTR = 1  (remote frame)
ID4  =  101  0100  0100,  RTR = 0  (data frame)ECU4 is the winner.1234frame4ID4

## Page 226

- 226 -
Embedded System Lab
Arbitration
ID2  =  101  1110  0011,  RTR = 0  (data frame)
ID3  =  101  0100  0100,  RTR = 1  (remote frame)
ID4  =  101  0100  0100,  RTR = 0  (data frame)

## Page 227

- 227 -
Embedded System Lab
Bitwise Arbitration
During arbitration,
(by using an internal monitoring device of the bus)each sender compares{the level of the transmitted bit} with {the level of the bit on the bus}If these levels are identical, the ECU continues to send
Sending a recessive level & observing a dominant level
Lose arbitration
Close down and send no more bits

## Page 228

- 228 -
Embedded System Lab
Bitwise Arbitration
ID2  =  101  1110  0011,  RTR = 0  (data frame)
ID3  =  101  0100  0100,  RTR = 1  (remote frame)
ID4  =  101  0100  0100,  RTR = 0  (data frame)ECU2ECU3ECU4SOFIdentifierRTR109 8 7 6 5 4 3 2 1 00 1 0 1 1Receiving Mode0 1 0 1 0 1 0 0 0 1 0 0 10 1 0 1 0 1 0 0 0 1 0 0 00 1 0 1 0 1 0 0 0 1 0 0 0BusReceiving ModeTransmission Mode

## Page 229

- 229 -
Embedded System Lab
이제 여러 개의ECU가 동시에CAN frame을 전송하고자 할때 어떻게bitwise arbitration 되는 지 보도록 하겠습니다.

## Page 230

- 230 -
Embedded System Lab
Bus Access in the CAN NetworkCAN Node ACAN Node BCAN Node CCAN Node D
0X0C7
0X378
0X20C
0X75E
0X227
0X207

## Page 231

- 231 -
Embedded System Lab
Control Field
Reserved bits
r1 and r0
Reserved for later use
Ensure future upward compatibility (extended CAN 2.0B frame)
Usually set dominant valuesr1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataControlfield

## Page 232

- 232 -
Embedded System Lab
Control Field
Data length code (DLC)
DLC3, DLC2, DLC1, DLC0
The number of bytes in the data field
r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataControlfield

## Page 233

- 233 -
Embedded System Lab
Control Field
Data Length CodeNumber of Data BytesDLC3 DLC2 DLC1 DLC00 0 0 0 01 0 0 0 12 0 0 1 03 0 0 1 14 0 1 0 05 0 1 0 16 0 1 1 07 0 1 1 18 1 0 0 0

## Page 234

- 234 -
Embedded System Lab
Control Field
Data Length Code of CAN FDNumber of Data BytesDLC3 DLC2 DLC1 DLC012 1 0 0 116 1 0 1 020 1 0 1 124 1 1 0 032 1 1 0 148 1 1 1 064 1 1 1 1

## Page 235

- 235 -
Embedded System Lab
r1r0DLC3DLC2DLC1DLC0
Standard Data frame
Data fieldSOFEOFRTRIDDataData field

## Page 236

- 236 -
Embedded System Lab
Data Field
Location of the information to be transmitted
From 0 to a max of 8 bytes
9 different kinds of length
4 bits of DLCCRCfieldData field0~8 bytesControlfield

## Page 237

- 237 -
Embedded System Lab
Data Field
Transmission of one byte
MSB (most significant bit) first
LSB (least significant bit) last
Example
transmission of  0x1A = ( 0000 1010 )2CRCfieldControlfield0001 1010Data field1 byte

## Page 238

- 238 -
Embedded System Lab
Data Field
Transmission of each byte
MSB (most significant bit) first
LSB (least significant bit) lastCRCfieldMSBLSBData field0~8 bytesControlfield

## Page 239

- 239 -
Embedded System Lab
Endianness of Data field
Then, how 4 byte data of 0x 1A  3B  56  78  will be sent?
Endianness
Byte ordering

## Page 240

- 240 -
Embedded System Lab
Endianness of Data field
Suppose that one CAN frame wants to send 4 byte data
0x 1A  3B  56 78
Big endian (Motorola mode)
Send   0x1A = ( 0000  1010 )2  first
then    0x3B = ( 0011  1011 )2
then    0x56  = ( 0000 1010 )2
then    0x78  = ( 0111 1000 )2 CRCfield4 byte(Big endian)Controlfield0001  1010 0011  10110101  01100111 1000

## Page 241

- 241 -
Embedded System Lab
Endianness of Data field
Suppose that one CAN frame wants to send 4 byte data
0x 1A  3B  56 78
Little endian (Intel Mode)
Send   0x78  = ( 0111 1000 )2  first
then    0x56  = ( 0000 1010 )2
then    0x3B = (  0011 1011 )2
then    0x1A =  ( 0001 1010 )2 CRCfield4 byte(Little endian)Controlfield0001  1010 0011  10110101  01100111 1000

## Page 242

- 242 -
Embedded System Lab
r1r0DLC3DLC2DLC1DLC0
CRC Field
CRC field
CRC sequence
15 bits
CRC delimiter
1bit, “1”SOFEOFRTRIDDataCRCSequenceCRCDelCRC Field1bit“1”15 bits

## Page 243

- 243 -
Embedded System Lab
CRC Field
Calculation of CRC sequence by the sender CAN controller
Destuff the bit sequence from SOF to datar1r0DLC3DLC2DLC1DLC0SOFRTRIDDataDestuffed bit sequencer1r0DLC3DLC2DLC1DLC0SOFRTRIDDataDestuffing

## Page 244

- 244 -
Embedded System Lab
CRC Field
Calculation of CRC sequence by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0” to the (destuffed) bit sequence from SOF to datar1r0DLC3DLC2DLC1DLC0SOFRTRIDData000 0000 0000 0000Destuffed bit sequence

## Page 245

- 245 -
Embedded System Lab
CRC Field
Calculation of CRC sequence by the sender CAN controller
Destuff the bit sequence from SOF to data
Add 15 bit “0” to the (destuffed) bit sequence from SOF to data
Divide the above result (in modulo 2)by  (1100 0101 1001 1001)2(0x C599)
The remainder of this division, 15 bits, is CRC sequence1100  0101 1001 1001r1r0DLC3DLC2DLC1DLC0SOFRTRIDData000 0000 0000 0000

## Page 246

- 246 -
Embedded System Lab
r1r0DLC3DLC2DLC1DLC0
CRC Field
The sender CAN controller
appends 15 bit CRC sequence and1bit CRC delimiter (whose value is “1”)after data fieldSOFEOFRTRIDDataCRCSequenceCRCDelCRC Field1bit“1”15 bits11 bits1 bit

## Page 247

- 247 -
Embedded System Lab
CRC Field
CRC sequence
15 bits
Hamming distance: d = 6
Five independent bit errors are 100% detectable

## Page 248

- 248 -
Embedded System Lab
Hamming distance
Hamming distance between two strings of equal length
The number of positions at which the corresponding symbols are different
The hamming distance between 1011 and 0101
1   0   1   1
0   1   0   13

## Page 249

- 249 -
Embedded System Lab
Hamming distance
Hamming distance measures
Minimum number of substitutionsrequired to change one string into the other
Number of errorsthat transformed one string into the other

## Page 250

- 250 -
Embedded System Lab
CRC in CAN protocol
Is restricted to the detection of errors
Not applied to their correctionCRC in CAN

## Page 251

- 251 -
Embedded System Lab
CRC Field in Receiver
The receiver CAN controller
divides the (destuffed) bit sequencefrom SOF to CRC sequence (in modulo 2)by (1100 0101 1001 1001)2(0x C599)
If the remainder of this division is “000 0000 0000 0000”
No transmission error
If the remainder is nonzero,
Error 1100  0101 1001 1001r1r0DLC3DLC2DLC1DLC0SOFRTRIDDataCRCSequence

## Page 252

- 252 -
Embedded System Lab
Acknowledgement field
Acknowledgement field
ACK slot
1 bit
ACK delimiter
1 bit, “1”r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDelACK Field11 bits1 bitACKslotACKDel1 bit1bit“1”15 bits1bit“1”

## Page 253

- 253 -
Embedded System Lab
Acknowledgement field
The sender CAN controller sends two recessive bits during acknowledgement field
In practice, the sender leaves the bus free and switches itself to listening or ‘receiver’ moder1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDelACK Field11 bits1 bitACKslotACKDel1 bit1bit“1”15 bits1bit“1”

## Page 254

- 254 -
Embedded System Lab
CRC and Acknowledgement
The receiver CAN controller sends a value during ACK slot
with considering the error occurrencer1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDel11 bits1 bitACKslotACKDelReceiver

## Page 255

- 255 -
Embedded System Lab
CRC and Acknowledgement
If no transmission error is detected by the receiver
The receiver CAN controller sends a positive acknowledgement during ACK slot
A dominant level, “0”r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDel11 bits1 bitACKslotACKDel“0” (No error)sent by receiver

## Page 256

- 256 -
Embedded System Lab
CRC and Acknowledgement
If transmission error is detected,
The receiver CAN controller sendsa negative acknowledgement during ACK slot
A recessive level, “1”r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDel11 bits1 bitACKslotACKDel“1” (Error)sent by receiver

## Page 257

- 257 -
Embedded System Lab
CRC and Acknowledgement
Example1
Suppose that there is no error detected from SOF to CRC delduring the transmission of frame3 by ECU3.123456frame3ID3

## Page 258

- 258 -
Embedded System Lab
CRC and Acknowledgement
Example1
Then, all receivers (i.e. ECU1, ECU2, ECU4, ECU5, and ECU6) send dominant values, “0”, during ACK slot,independent of any acceptance filtering.
ECU3 (Sender) will read the logical value “0” during ACK slot.123456“0”“0”“0”“0”“0”“0”

## Page 259

- 259 -
Embedded System Lab
Positive Acknowledgement
After sender transmits data field,
it starts to transmit CRC field.
Both receivers start to execute CRC check.DataSenderRec. 1Rec. 2CAN BusHeaderDataHeaderCRCSequenceCRCSequence

## Page 260

- 260 -
Embedded System Lab
Positive Acknowledgement
CRC field complete.
Both receivers have completed CRC check.
Both receivers start to send an ACK.
Sender sends ACK slot recessively.CRCSequenceCRCDelCRCSequenceCRCDelDataSenderRec. 1Rec. 2CAN BusHeaderDataHeaderACKslot

## Page 261

- 261 -
Embedded System Lab
Positive Acknowledgement
Both receivers ack positively (ACK slot: dominant)
Sender detects positive acknowledgement.
Sender starts to transmit ACK DEL.“0”“0”“0”“1”ACKslotCRCSequenceCRCDelCRCSequenceCRCDelDataSenderRec. 1Rec. 2CAN BusHeaderDataHeaderACKDel

## Page 262

- 262 -
Embedded System Lab
Positive Acknowledgement
ACK field complete.
Sender starts to transmit EOF.
“1”“1”ACKDel“0”“0”“0”“1”ACKslotCRCSequenceCRCDelCRCSequenceCRCDelDataSenderRec. 1Rec. 2CAN BusHeaderDataHeaderEOF

## Page 263

- 263 -
Embedded System Lab
Positive Acknowledgement
End of frame (EOF) complete.
End of frame: “000 0000” (7 bit recessive bits)
IFS(Inter Frame Space) startsEOF“1111111”“1”“1”ACKDel“0”“0”“0”“1”ACKslotCRCSequenceCRCDelCRCSequenceCRCDelDataSenderRec. 1Rec. 2CAN BusHeaderDataHeader“1111111”

## Page 264

- 264 -
Embedded System Lab
Positive Acknowledgement
IFS (Inter Frame Space) complete.
Then Bus Idle.EOF“1111111”“1”“1”ACKDel“0”“0”“0”“1”ACKslotCRCSequenceCRCDelCRCSequenceCRCDelDataSenderRec. 1Rec. 2CAN BusHeaderDataHeader“1111111”IFS“111”“111”Data frame

## Page 265

- 265 -
Embedded System Lab
CRC and Acknowledgement
Example 2
Suppose
ECU1, ECU5, and ECU6 detect no errors from SOF to CRC del during the transmission of frame3 by ECU3
ECU2 and ECU4 detect errors during CRC check123456frame3ID3

## Page 266

- 266 -
Embedded System Lab
CRC and Acknowledgement
Example 2
Then, during ACK slot,
ECU1, ECU5, and ECU6 send dominant values, “0”,
ECU2 and ECU4 send recessive values, “1”,
ECU3(Sender) will read the logical value “0” during ACK slot.123456“0”“1”“1”“0”“0”“0”

## Page 267

- 267 -
Embedded System Lab
CRC and Acknowledgement
Example 2
After ACK delimiter,
ECU2 and ECU4 send error frames to  signal errors123456Error frameError frame

## Page 268

- 268 -
Embedded System Lab
CRC and Acknowledgement
Example 3
Suppose
ECU1, ECU2, ECU4, ECU5, and ECU6 detect errors in CRC checkduring the transmission of frame3 by ECU3123456frame3ID3

## Page 269

- 269 -
Embedded System Lab
CRC and Acknowledgement
Example 2
Then, during ACK slot,
ECU1, ECU2, ECU4, ECU5, and ECU6 send recessive values, “1”
ECU3 (Sender) will read the logical value “1” during ACK slot.
ECU3 (Sender)detects an ACK error123456“1”“1”“1”“1”“1”“1”

## Page 270

- 270 -
Embedded System Lab
CRC and Acknowledgement
Example 2
Then, during ACK slot,
ECU1, ECU2, ECU4, ECU5, and ECU6 send recessive values, “1”
ECU3 (Sender) will read the logical value “1” during ACK slot.
detects an ACK error and
terminates the ongoing message transmission by sending an error flag. 123456Error frame

## Page 271

- 271 -
Embedded System Lab
CRC and Acknowledgement
Example 2
Then, during ACK slot,
ECU1, ECU2, ECU4, ECU5, and ECU6 send recessive values, “1”
ECU1, ECU2, ECU4, ECU5, and ECU6 also send error frames later.123456Error frameError frameError frameError frameError frameError frame

## Page 272

- 272 -
Embedded System Lab
Acknowledgement field
Acknowledgement field
ACK slot
ACK delimiter
CRC Delimiter

## Page 273

- 273 -
Embedded System Lab
Acknowledgement field
ACK slot
Whenever a receiver has correctly received a message,it acknowledges this to the senderby sending a dominant bit in the ACK slot time

## Page 274

- 274 -
Embedded System Lab
Acknowledgement field
ACK delimiter
Always recessive
So, when a message has been correctly received by all ECUs in the network
ACK slot ((dominant) bit is surrounded by two recessive bits (CRC delimiter and ACK delimiter)
CRC Delimiter

## Page 275

- 275 -
Embedded System Lab
Acknowledgement field
In a transmission,
The sender ECU sends two recessive bits along the bus
In practice, the sender leaves the bus free and switches itself to listening or ‘receiver’ mode

## Page 276

- 276 -
Embedded System Lab
Acknowledgement field
Whenever a receiver has correctly received a message,it acknowledges this to the senderby sending a dominant bit in the ACK slot time
All receivers in the network must send an ack signal over the network if they have not detected any error of any kind.

## Page 277

- 277 -
Embedded System Lab
Acknowledgement field
If the sending ECU receives an acknowledgement,
It means at least one ECU in the network has received the message completely and without errors.

## Page 278

- 278 -
Embedded System Lab
End of data frame
Data frame is terminated by a sequence of 7 recessive bits
The end of data frame has a fixed structure
No bit stuffingr1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDelACKslotACKDel

## Page 279

- 279 -
Embedded System Lab
Interframe Space (IFS)
Interframe space (IFS)
Before the next frame starts to be sent,minimum 3 bit recessive time interval is required in CAN.r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDDataCRCSequenceCRCDel≥3 bitACKslotACKDelIFS

## Page 280

- 280 -
Embedded System Lab
Physical Transfer of a Standard Data Frame
Signals in oscilloscope
500kbpsEOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOF3.5v1.5v2.5v

## Page 281

- 281 -
Embedded System Lab
Physical Transfer of a Standard Data Frame
Signals in oscilloscope
500kbps
SOF: dominant (“0”)EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOF3.5v1.5v2.5v0

## Page 282

- 282 -
Embedded System Lab
Physical Transfer of a Standard Data Frame
Signals in oscilloscope
500kbps
Control field:
000100 4byte dataEOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOF3.5v1.5v2.5v000100

## Page 283

- 283 -
Embedded System Lab
Physical Transfer of a Standard Data Frame
Signals in oscilloscope
500kbps
CRC del, ACK slot, ACK del
101EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOF3.5v1.5v2.5v101

## Page 284

- 284 -
Embedded System Lab
Physical Transfer of a Standard Data Frame
Signals in oscilloscope
500kbps
EOF
111 1111EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOF3.5v1.5v2.5v1111111

## Page 285

- 285 -
Embedded System Lab
Standard Data Frame in CAN

## Page 286

- 286 -
Embedded System Lab
Standard Data Frame in CAN

## Page 287

- 287 -
Embedded System Lab
STANDARD REMOTE FRAME IN CAN

## Page 288

- 288 -
Embedded System Lab
Data Frame vs Remote Frame
Data frame
Contains some information (data) in this frame
Purpose
Sending some information
Remote frame
Does NOT contain any information in this frame
i.e. no data field
Purpose
Request the transmission of its corresponding data frame from another ECUThe identifier of the corresponding data frame is the same as the remote frame
NO automotive usage

## Page 289

- 289 -
Embedded System Lab
Data Frame vs Remote Frame
Data frame
Remote frameSOFEOFRTRACKDelID ACKSlotCRCSequenceCRCDelDataControl Fieldr1r0DLCHeaderTail
SOF EOFRTRACKDelIDACKSlotCRCSequenceCRCDelControl Fieldr1r0DLCHeaderTail

## Page 290

- 290 -
Embedded System Lab
Data Frame vs Remote Frame
Data frame
RTR (Remote Transmission Request)  bit = “0” (dominant)
“RTR(Remote transmission request)” is false.i.e. NOT request the transmission from another ECU
Remote frame
RTR (Remote Transmission Request)  bit = “1” (recessive)
“RTR(Remote transmission request)” is true.i.e. Request the transmission from another ECU–Request one data frame whose identifier is the same as the remote frame

## Page 291

- 291 -
Embedded System Lab
Remote Frame
An ECU may need information, which it does not have, to carry out its task.
An ECU needing data can initialize the requestfor transmission of the data from another ECU by sending a remote frame.

## Page 292

- 292 -
Embedded System Lab
Remote frame
Remote frame
Start of frame
Arbitration field
Control field
(No Data field)
CRC sequence
Acknowledgement field
End of frame
7tharea (interframe space)

## Page 293

- 293 -
Embedded System Lab
Remote Frame
SOFEOFRTRACKDelIDACKSlotCRCSequenceCRCDelControl Fieldr1r0DLCRemote frameIFSIFS

## Page 294

- 294 -
Embedded System Lab
Start of frame
The same as in ‘data frame’
Arbitration field
Identifier
the same as in ‘data frame’
RTR bit
Recessive (Compare that it is dominant in data frame)
Remote frame
SOFRTR=“1”ID10IdentifierID9ID8ID7ID6ID5ID4ID3ID2ID1ID0MSBLSB

## Page 295

- 295 -
Embedded System Lab
If a remote frame and its corresponding data frameare sending simultaneously,
their identifiers are same and sothe data frame wins because of RTR bit.
Data Frame vs Remote Frame

## Page 296

- 296 -
Embedded System Lab
Control field
Reserved bits: the same
Data length
Unnecessary, but it is advisable to specify this field correctly
Remote frame
r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDControl“1”“ 0   0    0    0 ”

## Page 297

- 297 -
Embedded System Lab
Data field
No data field in remote frame
CRC, acknowledgement, EOF and IFS
The same
Remote frame
r1r0DLC3DLC2DLC1DLC0SOFEOFRTRIDCRCSequenceCRCDelACKslotACKDelIFS“1”

## Page 298

- 298 -
Embedded System Lab
Remote Frame

## Page 299

- 299 -
Embedded System Lab
ERROR FRAME IN CAN

## Page 300

- 300 -
Embedded System Lab
Error Frame
Error frame is used to indicate errors detected during communication
An ongoing erroneous data transmission is terminated andan error frame is issued.

## Page 301

- 301 -
Embedded System Lab
Error Frame
Error frame
Error flag
Error delimiter

## Page 302

- 302 -
Embedded System Lab
Data frame
Active Error Frame
Active error frame
Active error flag
(6 dominant bits)
000 000
Error delimiter
(8 recessive bits)
1111 11110  0  0  0  0  01  1  1  1  1  1  1  1Active error flagError delimiterIFS or Overload frameRemote frameor

## Page 303

- 303 -
Embedded System Lab
Active Error Frame
Active error flag
Consists of six consecutive ’dominant’ bits
The primary and secondary error flags might overlap.

## Page 304

- 304 -
Embedded System Lab
Active error frame
The primary and secondary error flags might overlap.
6 ≤ active error flag length ≤12
Error delimiter
(8 recessive bits)
1111 1111
Active Error Frame

## Page 305

- 305 -
Embedded System Lab
Data frame
Passive Error Frame
Passive error frame
Passive error flag
6 recessive bits
111 111
Error delimiter
8 recessive bits
1111 11111  1  1  1  1  11  1  1  1  1  1  1  1Passive error flagError delimiterIFS or Overload frameRemote frameor

## Page 306

- 306 -
Embedded System Lab
Passive Error Frame
Passive error flag
Consists of six consecutive ’recessive’ bits unless it is overwritten by ’dominant’ bits from other ECUs

## Page 307

- 307 -
Embedded System Lab
DATA PROTECTION IN CAN

## Page 308

- 308 -
Embedded System Lab
CANProtocolCANPhysical Layer
Error TrackingError HandlingError DetectionError Avoidance
Data Protection

## Page 309

- 309 -
Embedded System Lab
Principle of Data Protection
CAN
Strict real time requirements
Reliable data transmission
Because CAN is also used in very time and safety critical applications within the motor vehicle,requirements for data integrity are extremely high.

## Page 310

- 310 -
Embedded System Lab
Principle of Data Protection
Reliable data transmission
A prerequisite for the safety and reliability of ECU in vehicles

## Page 311

- 311 -
Embedded System Lab
Principle of Data Protection
For reliable data transmission,
(First) Physical system design
With considering EMC(ElectroMagnetic Compatibility)

## Page 312

- 312 -
Embedded System Lab
Principle of Data Protection
Despite electromagnetically compatible design and physical data protection,
Several interference due to noise may occur
Attenuation and distortion of signalsErrors may occur!

## Page 313

- 313 -
Embedded System Lab
Principle of Data Protection
Let
P1
probability with which the data is disturbed during transmission
P2
probability that disturbed data remains undetected
Then
Probability of Data integrity = 1–P1*P2

## Page 314

- 314 -
Embedded System Lab
Principle of Data Protection
To reduce P1
(i.e. For avoiding corruption of data )
Physical layer design
Electromagnetically compatible
To reduce P2
(i.e. For detecting corrupted data well)
Effective logical error detection and logical error handling

## Page 315

- 315 -
Embedded System Lab
Data Protection
CAN physical layer
Twist
Reducing cross talk
Termination
Preventing reflection
Differential bus
Reducing external noise effect
CAN controller (CAN protocol)
Effective logical error detection and logical error handling

## Page 316

- 316 -
Embedded System Lab
ERROR DETECTION IN CAN

## Page 317

- 317 -
Embedded System Lab
Logical Error detection
Five different types of errors (Not mutually exclusive)
In the Physical layer
Bit error
Stuff error
Frame structure level
ACKnowledgement error
CRC error
Violation of the frame structure
Structure error

## Page 318

- 318 -
Embedded System Lab
Error Detection Procedures

## Page 319

- 319 -
Embedded System Lab
Bit (monitoring) ErrorECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECU
CAN Bus
TxDRxD

## Page 320

- 320 -
Embedded System Lab
Error Detection by Transmitter
Bit (monitoring) ErrorECUECUECUCoreCAN ControllerCAN TransceiverMCUECUECUCoreCAN ControllerCAN TransceiverMCUECUCoreCAN ControllerCAN TransceiverMCUECUTxDRxD

## Page 321

- 321 -
Embedded System Lab
ERROR SIGNALING

## Page 322

- 322 -
Embedded System Lab
Error Signaling
If an active ECU detects an error conditionsend an ACTIVE error frameData frame0  0  0  0  0  01  1  1  1  1  1  1  1Active error flagError delimiterIFS or Overload frameRemote frameorActive error frame

## Page 323

- 323 -
Embedded System Lab
Error Signaling
If a passive ECU detects an error conditionsend a PASSIVE error frameData frame1  1  1  1  1  11  1  1  1  1  1  1  1Passive error flagError delimiterIFS or Overload frameRemote frameorPassive error frame

## Page 324

- 324 -
Embedded System Lab
Error Signaling
For a Bit error, a Stuff error, a Structure error, oran ACK error,the error-detecting ECU starts to send an error frame at the next bit

## Page 325

- 325 -
Embedded System Lab
Error Signaling
For a CRC error,
the error detecting ECU starts to send an error frame at the bit following the ACK delimiter
unless an error frame for another error condition has already been started.

## Page 326

- 326 -
Embedded System Lab
Error Handling
Six dominant bits in error flag
An intentional violation of the bit stuffing rule
Generating a bit stuffing error
0  0  0  0  0  01  1  1  1  1  1  1  1Active error flagError delimiterActive error frameError indicationby error-detecting CAN ECUError frameData frameInform all other ECU Error detection

## Page 327

- 327 -
Embedded System Lab
Error Handling
Transmission of an error flag ensures that
all other CAN ECUs
will also transmit an error flag secondary error flag
and thereby also terminate the regular data transmission just like the sender of the primary error flag.
Depending on the situation, the primary and secondary error flags might overlap.

## Page 328

- 328 -
Embedded System Lab
Error Handling
Transmission of an error flag is always terminated by an error delimiter.
The error delimiter consists of 8 recessive bits.
The error delimiter
replaces the ACK delimiter and the EOF of a regular message transmission, 0 0 0 0 0 01 1 1 1 1 1 1 1Active error flagErrordelimiterError indicationby error-detecting CAN ECUData frameError detection

## Page 329

- 329 -
Embedded System Lab
Error Handling
Together with the obligatory transmission pause (IFS) on the CAN bus,
the error delimiter of 8 recessive bits results in 11 recessive bits (bus-idle identifier).0 0 0 0 0 01 1 1 1 1 1 1 1Active error flagErrordelimiterError indicationby error-detecting CAN ECUData frameError detection1 1 1 IFS

## Page 330

- 330 -
Embedded System Lab
Handling A Bit Monitoring Error
Because of six consecutive dominant bis,
Some receivers that do not detect errors until this time recognize a bit stuffing error.
They send error flagsCAN bus may represent the max 12 consecutive dominant bis.
recessivedominantrecessivedominantSenderCANBusReceiver

## Page 331

- 331 -
Embedded System Lab
Handling A Bit Monitoring Error
Because of six consecutive dominant bis,
Some receivers that do not detect errors until this time recognize a bit stuffing error.
They send error flagsAfter error flags, they send error delimiters.
recessivedominantrecessivedominantSenderCANBusReceiver

## Page 332

- 332 -
Embedded System Lab
Handling A Bit Monitoring Error
Transmission of an error flag is always terminated by an error delimiter.
The error delimiter consists of 8 recessive bits.
recessivedominantrecessivedominantSenderCANBusReceiver

## Page 333

- 333 -
Embedded System Lab
Handling A Bit Monitoring Error
The error delimiter
replaces the ACK delimiter and the EOF of a regular message transmission,
recessivedominantrecessivedominantSenderCANBusReceiver

## Page 334

- 334 -
Embedded System Lab
Handling A Bit Monitoring Error
Together with the obligatory transmission pause (IFS) on the CAN bus,
the error delimiter of 8 recessive bits results in 11 recessive bits (bus-idle identifier).
recessivedominantrecessivedominantSenderCANBusReceiver

## Page 335

- 335 -
Embedded System Lab
Error Handling
Error handling is completed by the sender of the interrupted CAN message.
After the IFS, the sender attempts to transmit the interrupted CAN message again.
Because of priority-driven bus access,there is no guarantee of an immediate repetition.

## Page 336

- 336 -
Embedded System Lab
Error Handling
Case 1 (The best case)
After an error detection, error frames are sent.
Primary and secondary error flags overlap.
After IFS,
An interrupted data frame may start to be sent.0 0 0 0 0 01 1 1 1 1 1 1 1Active error flagErrordelimiterError indicationby error-detecting CAN ECUData frameError detection1 1 1IFSData frameRepetition of interrupted data frame

## Page 337

- 337 -
Embedded System Lab
Error Handling
Case 1 (The best case)
A time period of 17 bit times elapses from error detection to resending
6(primary error flag)+8(error delimiter)+3(IFS)0 0 0 0 0 01 1 1 1 1 1 1 1Active error flagErrordelimiterError indicationby error-detecting CAN ECUData frameError detection1 1 1IFSData frameRepetition of interrupted data frame17 bits

## Page 338

- 338 -
Embedded System Lab
Error Handling
Case 2
After an error detection, error frames are sent.
Primary and secondary error flags do not overlap at all.
After IFS,
An interrupted data frame may start to be sent.0 0 0 0 0 0Superposition of error flagsError indicationby error-detecting CAN ECUData frameError detection1 1 1 1 1 1 1 1Errordelimiter1 1 1IFSData frameRepetition of interrupted data frame0 0 0 0 0 0

## Page 339

- 339 -
Embedded System Lab
Error Handling
Case 2
A time period of 23 bit times elapses from error detection to resending
6(primary error flag)+ 6(secondary error flag)+ 8(error delimiter)+3(IFS)0 0 0 0 0 0Superposition of error flagsError indicationby error-detecting CAN ECUData frameError detection1 1 1 1 1 1 1 1Errordelimiter1 1 1IFSData frameRepetition of interrupted data frame0 0 0 0 0 023 bits

## Page 340

- 340 -
Embedded System Lab
Error Handling
Case 3 (Passive state (error detecting) ECU)
After an error detection, error frames are sent.
Primary and secondary error flags overlap.
After IFS and “Suspend Transmission Time”,
An interrupted data frame may start to be sent.Superposition of error flagsError indicationby error-detecting CAN ECUData frameError detection1 1 1 1 1 1 1 1Errordelimiter1 1 1IFSData frameRepetition of interrupted data frameSuspendtrans. time1 1 1 1 1 1 1 16 bits6 bits

## Page 341

- 341 -
Embedded System Lab
Error Handling
Case 3 (Passive state (error detecting) ECU)
A time period of 31 bit times elapses from error detection to resending
6(primary error flag)+ 6(secondary error flag)+ 8(error delimiter)+3(IFS)+8(suspend transmission time)Superposition of error flagsError indicationby error-detecting CAN ECUData frameError detection1 1 1 1 1 1 1 1Errordelimiter1 1 1IFSData frameRepetition of interrupted data frame6 bits31 bits1 1 1 1 1 1 1 1Suspendtrans. time6 bits

## Page 342

- 342 -
Embedded System Lab
ERROR TRACKING IN CAN

## Page 343

- 343 -
Embedded System Lab
Error Counters
Each CAN controller has
a TEC (Transmit Error Counter)
a REC (Receive Error Counter)

## Page 344

- 344 -
Embedded System Lab
Error Tracking
Error ActiveStart_Up(HW Reset)
Error PassiveBus OffREC > 127orTEC > 127REC < 128andTEC < 128TEC > 255SW Reset andReception of 128 X 11  “1” bits

## Page 345

- 345 -
Embedded System Lab
Error Counters
In case of successful transmission of a data or remote frame,
the relevant error counter is decremented (TEC=TEC-1; REC=REC-1).

## Page 346

- 346 -
Embedded System Lab
Error Counters
Detection and subsequent transmission of an error flag causes
the relevant error counter to be incremented according to certain rules.

## Page 347

- 347 -
Embedded System Lab
Receive Error Counter (REC)Change When a node-1 successful reception of a message if REC ≤ 127,A value btw 119 and 127successful reception of a message if REC > 127+1 detects an error unless a Bit Error during an Active Error Flag or an Overload Flag+8 detects a dominant bit as the first bit after sending an Error Flagdetects a Bit Error while sending an Active E. F. or an Overload Flagdetects more than 7 consecutive dominant bits after sending an Active E. F., Passive E.F. or Overload Flag(+8 for each additional 8 dominant bits)

## Page 348

- 348 -
Embedded System Lab
Transmit Error Counter (TEC)Change When a node-1 successful transmission of a message+8 detects a Bit Error while sending an Active E.F. or an Overload Flagdetects more than 7 consecutive dominant bits after sending an Active E.F., Passive E.F. or Overload Flag(+8 for each additional 8 dominant bits)sends an Error Flag (Exception 1: If a node is ‘error passive’ and detects an ACK Error and does not detect a ‘dominant’ bit while sending its Passive E.F.Exception 2: If a node sends an Error Flag because a Stuff Error occurred during arbitration whereby the Stuff Bit is located before the RTR bit, and should have been  ‘recessive’, and has been sent as ‘recessive’ but monitored as ‘dominant’In exception 1 and 2, TEC is not changed.)

## Page 349

- 349 -
Embedded System Lab
Error Active ECU
Depending on the specific error count, a CAN controller handles switching of the error state. Error ActiveStart_Up(HW Reset)
Error PassiveBus OffREC > 127orTEC > 127REC < 128andTEC < 128TEC > 255SW Reset andReception of 128 X 11  “1” bits

## Page 350

- 350 -
Embedded System Lab
Error Active ECU
After the reset,
“Error Active” CAN controller
Active error flag after detecting an error.
0  0  0  0  0  01  1  1  1  1  1  1  1Active error flagError delimiterActive error frame

## Page 351

- 351 -
Embedded System Lab
Error Active ECU
After 11 bit consecutive “1”
error delimiter (8 bit “1”) + IFS (3bit “1”)this (error active) sender tries to send the interrupted CAN message.

## Page 352

- 352 -
Embedded System Lab
Error Passive ECU
When a limit is exceeded (TEC>127 or REC>127),
the CAN controllers switch over to the “Error Passive” state.

## Page 353

- 353 -
Embedded System Lab
Error Passive ECU
When a limit is exceeded (TEC>127 or REC>127),
the CAN controllers switch over to the “Error Passive” state.
“Error Passive” CAN controllers
Passive error flag
Sending six homogeneous recessivebits.
This prevents the error-detecting receivers from globalizing detected errors.Data frame1  1  1  1  1  11  1  1  1  1  1  1  1Passive error flagError delimiterIFS or Overload frameRemote frameorPassive error frame

## Page 354

- 354 -
Embedded System Lab
Error Passive ECU
Before starting to transmit the next CAN frame,
The error passive ECU  must wait the “Suspend Transmission Time” (8 bits)
8 bits

## Page 355

- 355 -
Embedded System Lab
Error Tracking
If a CAN controller fails or if there are extreme accumulations of errors,
a state transition is made to the “Bus Off” state.
The CAN controller disconnects from the CAN bus.

## Page 356

- 356 -
Embedded System Lab
Error Tracking
The Bus-Off state can only be exited
by intervention of the host (with a mandatory waiting time of 128 x 11 bits)
or by a hardware reset.

## Page 357

- 357 -
Embedded System Lab
OVERLOAD FRAME

## Page 358

- 358 -
Embedded System Lab
Overload Conditions
Internal conditions of a receiver
which requires a delay of the next data frame or remote frame
Detection of a dominant bit during the first two bits of interframe space
Detection of a dominant bit at the last bit of
(The 8thbit) an Error Delimiter
Overload Delimiter
(The 7thbit) an End of Frame

## Page 359

- 359 -
Embedded System Lab
Overload Conditions
Internal conditions of a receiver The start of an overload frame is allowed only in the first time bit of the anticipated interframe space
Overload framesent by one receiverData frame0 0 0 0 0 01 1 1 1 1 1 1 1Overloadframe1 1 1IFSData frameRegular receiverReceiverwhich requires delay

## Page 360

- 360 -
Embedded System Lab
Overload Conditions
Detection of a dominant bit during the first two bits of interframe spaceThe start of the overload frame occurs immediately after the detection of the dominant bit
1 1 1 1 1 1 1 1Overloadframe0  0  0  0  0  0

## Page 361

- 361 -
Embedded System Lab
Overload Conditions
Detection of a dominant bit during the first two bits of interframe spaceThe start of the overload frame occurs immediately after the detection of the dominant bit
1 1 1 1 1 1 1 1Overloadframe0  0  0  0  0  0

## Page 362

- 362 -
Embedded System Lab
Overload Conditions
Detection of a dominant bit at the last bit of
(The 8thbit) an Error Delimiter
Overload Delimiter
(The 7thbit) an End of FrameThe start of the overload frame occurs immediately after the detection of the dominant bit

## Page 363

- 363 -
Embedded System Lab
MESSAGE DOUBLING

## Page 364

- 364 -
Embedded System Lab
Local Errors in EOF
Error detection regionError detectionby Receiver ECUEOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOFError detection by Sender ECUOne bit difference

## Page 365

- 365 -
Embedded System Lab
Suppose that a single bit error near the end of End of Frame (EOF).
Local Errors in EOF
EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOFOne bit error occurs!

## Page 366

- 366 -
Embedded System Lab
Then
Receivers recognize this frame as valid
But the sender does not.
Local Errors in EOF
EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOFOne bit error occurs!

## Page 367

- 367 -
Embedded System Lab
Thus
The sender must retransmit this frame.Receivers may have got one frame more than once.
Message Doubling
EOFArbitrationfieldData field (4 bytes)CRCfieldACKfieldControlfieldSOFOne bit error occurs!

## Page 368

- 368 -
Embedded System Lab
CAN Bus Error Handling –Message Doubling
One message may be doubled by a single bit error near the end of End of Frame (EOF).
If CAN bus is used in a disturbed environment:
NEVER use toggle messages
NEVER transmit messages carrying relative data
like angle increments or delta counts
Use protected protocols or sequence numbers for data or program segmentation
Alive counterIs incremented upon each transmission of the data and the receiver can verify that the counter has been incremented.

## Page 369

- 369 -
Embedded System Lab
Overload frame
Purpose of overload frame
to indicate that an ECU has been overloaded for a certain time
With an Overload Frame
the transmitter is requested to delay the start of the next transmission. 0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeOverloadflagOverloaddelimiter

## Page 370

- 370 -
Embedded System Lab
Overload Frame
Overload flag field (OLF)
6 consecutive dominant bits
The OLF destroys the defined structure of interframe spaceAll the other ECUs then detect an overload condition, and each starts to transmit an OLF on its own account.0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeOverloadflagOverloaddelimiter

## Page 371

- 371 -
Embedded System Lab
Overload Conditions
Example
If one receiver requires a delay of the next frame, Data frameReceiverwhich requires delay

## Page 372

- 372 -
Embedded System Lab
Overload Conditions
Example
If one receiver requires a delay of the next frame, it will send one overload frame after the current frame.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delay

## Page 373

- 373 -
Embedded System Lab
Overload Conditions
Example
Because of dominant values in this overload frame, CAN bus values become dominant during IFS.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delayCAN Bus0 0 0 0 0 0IFSData frame

## Page 374

- 374 -
Embedded System Lab
Overload Conditions
Example
Because of dominant values of the 1stbit in IFS, other ECUs will also send overload frames.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delay0 0 0 0 0 0IFS0 0 0 0 0 01 1 1 1 1 1 1 1Overload framessent by other ECUs

## Page 375

- 375 -
Embedded System Lab
Overload Conditions
Example
Thus, overload flags may overlap.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delay0 0 0 0 0 0IFS0 0 0 0 0  01 1 1 1 1 1 1 1CAN Bus0 0 0 0 0 0 0Data frame1 1 1 1 1 1 1 1

## Page 376

- 376 -
Embedded System Lab
Overload Conditions
Example
After (overlapped) overload delimiter, one IFS will be followed.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delay0 0 0 0 0 0IFS0 0 0 0 0  01 1 1 1 1 1 1 1CAN Bus0 0 0 0 0 0 0Data frame1 1 1 1 1 1 1 11 1 1 IFS

## Page 377

- 377 -
Embedded System Lab
Next frame
Overload Conditions
Example
As a result, the next frame transmission will be delayed.Overload framesent by one receiver0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeData frameReceiverwhich requires delay0 0 0 0 0 0IFS0 0 0 0 0  01 1 1 1 1 1 1 1CAN Bus0 0 0 0 0 0 0Data frame1 1 1 1 1 1 1 1IFS1 1 1

## Page 378

- 378 -
Embedded System Lab
Overload Conditions
Superposition of overlapped flags

## Page 379

- 379 -
Embedded System Lab
Overload Frame
Overload Frame
The same shape of an Active Error Frame
Difference between overload and error frames
Overload frame does not increase the error counters and does not causes a retransmission of a frame. 0 0 0 0 0 01 1 1 1 1 1 1 1OverloadframeOverloadflagOverloaddelimiter

## Page 380

- 380 -
Embedded System Lab
Overload frame
An overload frame can appear at the end of
A frame
an error delimiter, or
another overload delimiter

## Page 381

- 381 -
Embedded System Lab
Overload frame
An overload frame is followed
by the interframe space, or
by another overload frame.

## Page 382

- 382 -
Embedded System Lab
Overload frame
To avoid blocking the bus indefinitely,
only two consecutive overload frames can be generated to delay the following data or remote frames.

## Page 383

- 383 -
Embedded System Lab
CAN 2.0B

## Page 384

- 384 -
Embedded System Lab
ISO 11898-1
ISO 11898-1
CAN 2.0A
Standard frame of 11 identifier bits
CAN 2.0B
Standard frame of 11 identifier bits
Extended frame of 29 identifier bits

## Page 385

- 385 -
Embedded System Lab
Standard vs Extended Frames

## Page 386

- 386 -
Embedded System Lab
Standard vs Extended Frames
RTR(Remote transmission request)
SRR(substitute remote request bit)
IDE (identifier extension bit)

## Page 387

- 387 -
Embedded System Lab
Standard vs Extended Frames

## Page 388

- 388 -
Embedded System Lab
Standard vs Extended Frames

## Page 389

- 389 -
Embedded System Lab
Standard vs Extended Frames

## Page 390

- 390 -
Embedded System Lab
Standard vs Extended Frames

## Page 391

- 391 -
Embedded System Lab
Arbitration between a standard frame and an extended frameArbitration btw 2.0A and 2.0B
<Dominique Paret>

## Page 392

- 392 -
Embedded System Lab
Frames in 2.0A and 2.0B
Standard data framesr1r0DLC3DLC2DLC1DLC0SOFEOFRTR11 bitIDDataCRCSequenceCRCDelACKslotACKDel00 00

## Page 393

- 393 -
Embedded System Lab
DLC
Frames in 2.0A and 2.0B
Standard and extended data framesr1r0DLCSOFEOFRTR11 bitIDDataCRCSequenceCRCDelACKslotACKDel00 00IDESOFEOFSRR11 bitIDDataCRCSequenceCRCDelACKslotACKDel11018 bitIDr1r0RTR00 0

## Page 394

- 394 -
Embedded System Lab
DLC
Frames in 2.0A and 2.0B
Standard and extended data framesr1r0DLCSOFEOFRTR11 bitIDDataCRCSequenceCRCDelACKslotACKDel00 00IDESOFEOFSRR11 bitIDDataCRCSequenceCRCDelACKslotACKDel11018 bitIDr1r0RTR00 0

## Page 395

- 395 -
Embedded System Lab
DLC
Frames in 2.0A and 2.0B
Standard and extended data framesr1r0DLCSOFEOFRTR11 bitIDDataCRCSequenceCRCDelACKslotACKDel00 00IDESOFEOFSRR11 bitIDDataCRCSequenceCRCDelACKslotACKDel11018 bitIDr1r0RTR00 0

## Page 396

- 396 -
Embedded System Lab
DLC
Frames in 2.0A and 2.0B
Standard and extended data framesr1r0DLCSOFEOFRTR11 bitIDDataCRCSequenceCRCDelACKslotACKDel00 00IDESOFEOFSRR11 bitIDDataCRCSequenceCRCDelACKslotACKDel11018 bitIDr1r0RTR00 0

## Page 397

- 397 -
Embedded System Lab
Application fields of CAN 2.0A and CAN 2.0B
