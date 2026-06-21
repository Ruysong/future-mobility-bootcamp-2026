# 8_HW

- 원본: [8_HW.pptx](<../교안/8_HW.pptx>)
- 생성 방식: 이미지 렌더링 후 Windows OCR(ko)

## Slide 1

미래차 부트캠프
On-device 시
」ong Hwan KO
Associate professor
SungKyunKwan University, Korea
Department of Electrical and Computer Engineering
jhko@skku.edu
IRIS Lab., SKKU
구별WA사(/
관 대아
lRISLab
SKKU
& ReSOurce•effiCient
lmage proeessing & Systems design
Jong Hwan KO (jhko@skku.edu/

## Slide 2

8. AI AcceIerators
Microarchitecture
Processing elements (PEs)
Parallelization
Pipelining
lnterleaving
DatafIow architecture
Temporal/spatial data reuse
lnput/output/weight stationary
Temporal/spatiaI architectures
시 accelerator trends
IRIS Lab., SKKU
Jong Hwan KO (jhko@skku.edu/

## Slide 3

8. 시 AcceLerators
Architecture - Microarchitecture - Circuits
HBM
8 GB
Reg Fi1e
Microarchitecture
PE
Architecture
ISA (instruction set
architecture)
Dataflow/Parallelism
FLOPs - Mem BW
Design decisions:
HBM
core
8 GB
scalar/vector
units
MXU
128x128
core
scalar/vector
unitS
MXU
128x128
0
0
IRIS Lab., SKKU
Precision
Sparsity
• Arithmetic unit design
Memory organization
Circuits
Digital circuits
from gates
Analog circuits
from transistors
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 4

8. 시 AcceLerators
Processing Element (PE)
XO
XI
Xn
x0
w0
WO
WI
Wn
. w= xOwO + xlwl + .
IRIS Lab., SKKU
)(0w0
x0w0
0
. 十 xnwn
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 5

8. 시 AcceLerators
Processing Element (PE)
XO
XI
Xn
WO
WI
Wn
. w= xOwO + xlwl + .
IRIS Lab., SKKU
)(1w1
x0w0
+)(1w1
x0w0
. 十 xnwn
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 6

8. 시 AcceLerators
Processing Element (PE)
)(2w2
x0w0
+)(1w1
. 十 xnwn
)(0w0
+)(1w1
+)(2w2
XO
XI
Xn
x2
w2
WO
WI
Wn
. w= xOwO + xlwl + .
IRIS Lab., SKKU
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 7

8. 시 AcceLerators
Parallelization (or Vectorization)
xOwO + xlwl +.
IRIS Lab., SKKU
. 十 xnwn
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 8

8. 시 AcceLerators
Parallelization (or Vectorization)
0
0
1
1
2
2
3
3
xOwO + xlwl +.
IRIS Lab., SKKU
Adder Tree
. 十 xnwn
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 9

8. 시 AcceLerators
Parallelization (or Vectorization)
0
0
1
1
2
2
3
3
xOwO + xlwl +.
IRIS Lab., SKKU
x0w0
)(1W1
)(2W2
)(3w3
. 十 xnwn
x0wO+x1 wl +x2w2+)弓w3
0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 10

8. 시 AcceLerators
Parallelization (or Vectorization)
4
4
5
5
6
6
7
7
xOwO + xlwl +.
IRIS Lab., SKKU
)(4w4
)(5W5
)(6W6
)(7W7
. 十 xnwn
x4w4+x5w5+x6w6+)7w7
x0w0
+XIWI
+)(2w2
+)(3w3
8
XiWi
℃=0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
10
Jong Hwan KO (jhko@skku.edu/

## Slide 11

8. 시 AcceLerators
Parallelization (or Vectorization)
IRIS Lab., SKKU
Adder Tree
Accumulator
Multipliers
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
11
Jong Hwan KO (jhko@skku.edu/

## Slide 12

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
g
e
C
a
1 cycle
)口口口口
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
12
Jong Hwan KO (jhko@skku.edu/

## Slide 13

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
g
e
C
1 cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
13
Jong Hwan KO (jhko@skku.edu/

## Slide 14

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
g
h
e
C
f
1 cycle
a
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
14
Jong Hwan KO (jhko@skku.edu/

## Slide 15

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
e
f
1 cycle
C
d
a
b
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
15
Jong Hwan KO (jhko@skku.edu/

## Slide 16

Pipelining
IRIS Lab., SKKU
8. 시 AcceLerators
Latency = 1 cycle
g
e
C
a
h
f
d
b
What is my throughput?
1 op/cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
16
Jong Hwan KO (jhko@skku.edu/

## Slide 17

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
g
e
C
a
h
f
d
b
Latency = 5 cycles
NOW, what is my throughput? 1 op/cycle
if fully pipelined
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
17
Jong Hwan KO (jhko@skku.edu/

## Slide 18

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
g
e
C
a
h
f
d
b
Latency = 5 cycles
1 op/cycle
NOW, what is my throughput?
if fully pipelined
Adapted from "Machine Learning Hardware and Systems'
18
Space tO store
intermediate results
AIIows you t0 start
a new OP per cycle
Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 19

8. 시 AcceLerators
Pipelining
IRIS Lab., SKKU
What about accumulators?
Could be different because
they have a data dependency
Accumulator
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
19
Jong Hwan KO (jhko@skku.edu/

## Slide 20

8. 시 AcceLerators
Pipelining and lnterleaving
IRIS Lab., SKKU
0
latency=l cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
20
Jong Hwan KO (jhko@skku.edu/

## Slide 21

8. 시 AcceLerators
Pipelining and lnterleaving
口目曰
IRIS Lab., SKKU
latency=l cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
21
Jong Hwan KO (jhko@skku.edu/

## Slide 22

8. 시 AcceLerators
Pipelining and lnterleaving
口口目
IRIS Lab., SKKU
a+b
a+b
latency=l cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
22
Jong Hwan KO (jhko@skku.edu/

## Slide 23

8. 시 AcceLerators
Pipelining and lnterleaving
口口口
IRIS Lab., SKKU
a十b十c
a十b十c
latency=l cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
23
Jong Hwan KO (jhko@skku.edu/

## Slide 24

8. 시 AcceLerators
Pipelining and lnterleaving
口口口
a+b+c+d
a+b+c+d
latency=l cycle
What is my throughput? 1 op/cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
24
Jong Hwan KO (jhko@skku.edu/

## Slide 25

8. 시 AcceLerators
Pipelining and lnterleaving
stall!
口目曰
cycle = 1
0
Latency = 2 cycle
Now, what is my throughput?
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
25
Jong Hwan KO (jhko@skku.edu/

## Slide 26

8. 시 AcceLerators
Pipelining and lnterleaving
cycle = 2
口目曰
IRIS Lab., SKKU
Latency = 2 cycle
Now, what is my throughput? 0.5 ops/cycle
data dependency stalls N0te: II = 2
my pipeline!
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
26
Jong Hwan KO (jhko@skku.edu/

## Slide 27

8. 시 AcceLerators
lnterleaving
曰曰曰目邑
lnterleave operands
Duplicate registers
Latency = 2 cycle
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
27
Jong Hwan KO (jhko@skku.edu/

## Slide 28

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 1
0
0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
28
Jong Hwan KO (jhko@skku.edu/

## Slide 29

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 2
0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
29
Jong Hwan KO (jhko@skku.edu/

## Slide 30

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 3
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
30
Jong Hwan KO (jhko@skku.edu/

## Slide 31

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 4
a+b
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
31
Jong Hwan KO (jhko@skku.edu/

## Slide 32

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 5
a+b
X+Y
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
32
Jong Hwan KO (jhko@skku.edu/

## Slide 33

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 6
a十b十C
a十b十C
X+Y
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
33
Jong Hwan KO (jhko@skku.edu/

## Slide 34

8. 시 AcceLerators
lnterleaving
IRIS Lab., SKKU
cycle = 7
)(十Y十Z
a+b+C
)(十Y十Z
Latency = 2 cycle
a十b十C
Now, what is my throughput? 1 op/cycle N0te: II = 1
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
34
Jong Hwan KO (jhko@skku.edu/

## Slide 35

8. 시 AcceLerators
Vectorization, Pipelining and lnterleaving
Pipelining
Multipliers
IRIS Lab., SKKU
lnterleaving
Adder Tree
Accumulator
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
35
Jong Hwan KO (jhko@skku.edu/

## Slide 36

8. AI AcceLerators
Data Reuse
TemporaI Reuse
Read once from memory, use same data
multiple times by same PE
SpatiaI Reuse
Read once from memory, use same data
multiple times by multiple PEs
IRIS Lab., SKKU
Memory
Reuse entry m
ultiple times #0
m a single me
mory read
Adapted from "Machine Learning Hardware and Systems'
36
PE
口
PE
口
PE
口
Reuse entry
multiple times
from a single
memory read
Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 37

8. 시 AcceLerators
Temporal Reuse Example
Reuse Distance
Number Of memory accesses
Size 0f your on-chip memory
Smaller is better
IRIS Lab., SKKU
(0 ExampIe ID convolution
0 0 0
교교回교匡匡匡匡회目目目
(하 Operation ordering 1: weight reuse distance = 4
[ö百百后준白[i匡白회회회•
十
十
피고기匡기匡기可回匡기匡
(하 Operation ordering 2: weight reuse distance = 1
Source Mem
lntermediate
LI Mem
口
Consumer
(e.g., PE)
Only storage for
weights is shown
(삐 Memory Hierarchy
37
Source: V. Sze 삶. "Efficient Processing 삶 Deep Neural Networks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 38

8. 시 AcceLerators
Spatial Reuse Example
• Only storage for
weights iS shown
(1) Memory hierarchy
Source Mem
Consumer CO
Consumer CI
Consumer C2
Consumer C3
口
口
口
口
time
CO
CI
C2
0
0
0
1
1
1
time
2 3
2 3
2 3
CO
CI
C2
口口口口
0 1 2 3
0 1 2 3
1 0 3 2
0 월口口田
CI
1 0 3 2
C2
2 1 0 3
3 2 1 0
C3
space
(d ) Operation ordering 3
(바 Operation ordering 1
IRIS Lab., SKKU
(0 Operation ordering 2
38
Why a smaller reuse distance
with spatial reuse?
Fewer memory read ports
Less area
0
Fewer reads
Less power
0
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 39

Act
WO
Weight
十
IRIS Lab., SKKU
8. 시 AcceLerators
Weight Stationary
G10ba1 Buffer
白를怪齧를丑국:
(a) Weight stationary
十
十
十
39
十
十
十
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 40

8. 시 AcceLerators
Weight Stationary
G10ba1 Buffer
白를怪齧를丑국:
Act
WO
Weight
a0w0
(a) Weight stationary
alwl
a2w2
a3w3
a4w4
a5w5
a6w6
a7w7
IRIS Lab., SKKU
40
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 41

8. 시 AcceLerators
lnput Stationary
G10ba1 Buffer
Weight
圜圜圖圖圜圜圖圜.
PE
Act
十
IRIS Lab., SKKU
(하 11꾸ut stationary
十
十
十
41
十
十
十
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 42

8. 시 AcceLerators
lnput Stationary
G10ba1 Buffer
Weight
圜圜圖圖圜圜圖圜.
PE
Act
a0w0
IRIS Lab., SKKU
(하 11꾸ut stationary
+ alwl
a2w2
+ a3w3 +
a4w4
42
a5w5
a6w6
a7w7
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 43

8. 시 AcceLerators
Output Stationary
Global Buffer
Act
圜圖圖圜圊圜圜圜.
(b) Output stationary
十
IRIS Lab., SKKU
十
十
十
十
十
十
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 44

8. 시 AcceLerators
Output Stationary
Global Buffer
Act
圜圖圖圜圊圜圜圜.
(b) Output stationary
a0w0
b0w0
c0w0
d0w0
e0w0
f0w0
gOwO
h0w0
IRIS Lab., SKKU
自自自自自自自白
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 45

8. 시 AcceLerators
Temporal/Spatial Architectures
Temp oral Architecture
(SIMD/SIMT)
Memory Hierarchy
Register File
Spatia1 Architecture
(Dataflow Processing)
Memory Hierarchy
ALU
Ⅱ
ALU
ALU
ALU
lll
Contr01
IRIS Lab., SKKU
ALU
Ⅱ
ALU
ALU
ALU
lll
ALU
Ⅱ
ALU
ALU
ALU
lll
ALU
Ⅱ
ALU
ALU
ALU
lll
ALU
ALU
ALU
ALU
ALU
ALU
ALU
ALU
1
ALU
ALU
ALU
ALU
ALU
ALU
ALU
ALU
Source: V. Sze 삶. "Efficient Processing Of Deep Neural Netvvorks" 2020
Jong Hwan KO (jhko@skku.edu/

## Slide 46

8. 시 AcceLerators
alignments in time
rows Of a
이2 이1
이 2 이 1 이 0
a22 a기1 a20
IRIS Lab., SKKU
a00
columns of b
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
46
Jong Hwan KO (jhko@skku.edu/

## Slide 47

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
alignments in time
이2 이1
이 2 1 이 0
a22 a21 a20
IRIS Lab., SKKU
0 a이0*bo,0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
47
Jong Hwan KO (jhko@skku.edu/

## Slide 48

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
alignments in time
이2
기0
1,0
a00*bo,0
00
2,2
이2
a이0*bo,1
이
a22 a21
IRIS Lab., SKKU
이 0 러,0*b00
이
a기0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
48
Jong Hwan KO (jhko@skku.edu/

## Slide 49

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
a02 예0*bo,0 a
+제7*b20
이,1 리0*bo,0 이
1,1 1,0
a기0*b0 0
a22 a21
a00*bo.1 a
0*bo 1
하,0*b07
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
49
Jong Hwan KO (jhko@skku.edu/

## Slide 50

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
a00*bo,0 2 a이0*bo.1
+예,2*b2,0
이 2 러0*bo,0 이
+러 2*b2,0
0*bo.1
十a *b
예.0*b02
1 0 0*b07
기1 떠0*bo,0 20 2•0 0.1
a22
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
50
Jong Hwan KO (jhko@skku.edu/

## Slide 51

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
+제2*b2,0
0*b0 0
十a *b
十러 2*b2,0
1,2
ao 0*bo.1
+러2*b21
0*bo 1
이
2 하.0*b02
+예2*b기2
리,0*bO,2
a22 a기0*b00 a21 a꼔*bo,1 20
1.0
十하,2*b2.0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
51
Jong Hwan KO (jhko@skku.edu/

## Slide 52

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
+列,2*b2,0
0*b이0
+러 1*bl.0
+러7*b2,0
a00*b01
+러2*b2,1
1
1.2
1,1
2,1
+예2*b기2
0*b02
十러2*b기2
떠0*bo.0 22 a기0*bo.1 1 하.0*bl.0
十떼*bl.0
十바,2*b2 0
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
52
Jong Hwan KO (jhko@skku.edu/

## Slide 53

8. 시 AcceLerators
Syst01ic Array: Matrix Multiply Example
函0*b01
+러2*b21
stationary?
+레*b12
+러7*b27
十리2*b2.2
++40*bl.1
+떠2*b22
IRIS Lab., SKKU
+러.2*b2,0
0*b이0
十러 2*b2 0
十82 2*b2 0
53
1.2
2.1
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/

## Slide 54

8. AI AcceLerators
Various Types
@ Embedded edge
㉦ Extreme edge
@ Mobility
ASSP
54
㉭ General computing
General/
Training & lnference
Efficient
Specific/
lnference
Flexible
Neuromorphic
IRIS Lab., SKKU
ASIC
Jong Hwan KO (jhko@skku.edu/

## Slide 55

8. AI AcceLerators
Performance/efficiency trend
10000
100
Extreme edge
2. Embedded edge
3. MobiIity
4. Portable
5. General
ASIC
Neuromorphic
IRIS Lab., SKKU
1000 TOPS/W
0.01
10 TOPS,•W
0.1 TOPS
001
0.01
MobiIe AP
MediaTek
4A15
MobiIe GPU
åO
nVl이A
Power (삐
55
100
GPU
TITAN V
PGA
1000
Jong Hwan KO (jhko@skku.edu/

## Slide 56

8. AI AcceLerators
Supports for lmprovement
Huang's law claims that
a synergy between hardware,
ngs tremendous improvement
software and artificial intelligence
SingIe-Chip lnference Performance • 317)( in 8 years
makes the new 'law' possible.
0
Huang said, "The innovation isn't
just about chips,” he said,
"lt's about the entire stack.
0
1970
0
0
0
0
0
200.00
St
integer matrix
multiplication
and
accumulation
half matrix
multiplication |Ⅷ
and ln Tensor
8-bit integer accumulation
4-element
v=ru:tot FP16 Tensor
261
DP4A Cores
124 .00
1
tured
rsity
1980
1990
2000
2010
2020
Data source: M. Horowitz, F. Labonte, 0. Shacham, K. Olukotun, L. Hammond, C. Batten, K. Rupp
IRIS Lab., SKKU
B口墨』臼O口
0.00
4/1/12 8/14/13 12/27/14 5/10/16 9/22/17 2/4/19 6/18/20 10/31/21
GPUs, Machine Learning, and EDA - Bill Dally
Adapted from "Machine Learning Hardware and Systems" Lectu「e (FaII 2024) by Prof. M. Abdelfattah (Cornell Tech)
Jong Hwan KO (jhko@skku.edu/
56

## Slide 57

8. AI AcceLerators
NVIDIA Cloud AI HW
P100 (2016)
Dense FPI 6 Perf (TOPs)
0
Ⅵ 00 (2017)
AI 00 (2020)
HI 00 (2022)
B100 (2024)
0
Memory Bendwidth (GB/S)
1800
1350
900
450
18.7
0
P100
IRIS Lab., SKKU
125
v100
SXM
700
560
420
280
250
140
0
P100
A100
SXM
9
H100
SXM
1,750
B100
SXM
9000
6750
4500
2250
732
0
P100
900
Ⅵ00
SXM
2,039
A100
SXM
3,430
H100
SXM
8,192
B100
SXM
57
0 Power (삐
00
400
300
V100 A100 H100
SXMSXM SXM
700
B100
SXM
0 Memory (GB)
200
150
100
96
80
50
P100 Ⅵ00 A100 H100 B100
SXMSXM SXM SXM
Adapted from "TinyML and Efficient Deep Learning Computing" Lectu「e (Fall 2024) by Prof. Song Han (MIT)
Jong Hwan KO (jhko@skku.edu/

## Slide 58

8. AI AcceLerators
Nvidia Jetson
• NVIDIA Jetson is a complete System on Module (SOM) that includes a GPU, CPU, memory,
power management, high-speed interfaces, and more
수十鬱깐)
0 Performance (TOPs)
64
300
225
150
75
0.5
0
Nano
IRIS Lab., SKKU
75.0
60
45
30
1510
0
0 Power (삐
30
20
15
TX2
60
64
48
16
4
0
0 Memory (GB)
3
16
1.3
TX2
00.
32
21.0
Xavier NX AGX Xavier AGX Orin
32GB
AGX Orin Nano
64GB
Xavier NX AGX Xavier AGX Orin AGX Orin Nano
32GB 64GB
4
TX2 XavierNX AGX Xavier AGX Orin AGX Orin
32GB 64GB
58
Adapted from "TinyML and Efficient Deep Learning Computing" Lectu「e (Fall 2024) by Prof. Song Han (MIT)
Jong Hwan KO (jhko@skku.edu/

## Slide 59

8. AI AcceLerators
Microcontroller
• A compact integrated circuit designed for embedded systems.
• A typical microcontroller includes a processor, memory and input/output 0/0)
peripherals on a single
0 Performance (DMIPS*)
0
Power (mW)
0 Memory (KB)
500
375
250
125
45
0
Arduino
Zero
IRIS Lab., SKKU
158
Arduino
DUE
STM32
F407VGT
2 400
300
200
100
6
0
STM32 Arduino
F746NG Zero
26
Arduino
DUE
13
STM32
F407VGT
60 320
240
160
80
32
0
STM32 Arduino
F746NG Zero
96
Arduino
DUE
196
STM32
F407VGT
320
STM32
F746NG
59
Adapted from "TinyML and Efficient Deep Learning Computing" Lectu「e (Fall 2024) by Prof. Song Han (MIT)
Jong Hwan KO (jhko@skku.edu/

## Slide 60

8. AI AcceLerators
Qualcomm Hexagon DSP
• A family 0f digital signal processor (DSP) products by Qualcomm.
lt is designed tO deliver performance with IOW power over a variety Of applications
4) Performance (TOPs)
60
45
30
15
3
0
S845
IRIS Lab., SKKU
7
S855
15
S865
- 26
S888
S8G1
9.6
9.2
8.8 9
8
S845
10
S855
0 Power (삐
10
S865
S888
16
10
12
8
8
4
4
0
S8G1 S845
S855
8•
0 Memory (GB)
16
12
S865
S888
16
S8G1
Adapted from "TinyML and Efficient Deep Learning Computing ' Lectu「e (Fall 2024) by Prof. Song Han (MIT)
60
Jong Hwan KO (jhko@skku.edu/

## Slide 61

8. AI AcceLerators
Apple Neural Engine
• An energy-efficient and high-throughput engine for ML inference on Apple silicon
`4뾯
0 Performance (TOPs)
35
28
14
0.6
A11
IRIS Lab., SKKU
A12
A13
A14
15.8
A15
A16
A17
A11
A12
A13
0 Power (삐
A14 A15
61
A16 A17 A11 A12 A13
Adapted from "TinyML and Efficient Deep Learning Computing" Lectu「e (Fall 2024) by Prof. Song Han (MIT)
0 Memory (GB)
A14 A15 A16 A17
Jong Hwan KO (jhko@skku.edu/

## Slide 62

8. AI AcceLerators
COSt 0f an ASIC
0
℃
$580M
$435M
$290M
$145M
$51 3M
$37.7M
$28.SM
$OM
$297 8M
$1744M
$1063M
90.3M
Validation
Prototype
Software
Physical
Most of the
cost goes tO
software en
gineers!
Verification
Architecture
IP QuaIification
65nm 40nm 28nm 22nm 16nm 10nm 7nm 5nm
The software cost dominates the cost breakdown 0f advanced technology nodes
We focus on designing new algorithms and software for efficient computing.
Adapted f℃m "Machine Learning Hardware and Systems" Lecture (FaII 2024) by P℃f. M. Abdelfattah (Cornell Tech)
IRIS Lab., SKKU
62
Jong Hwan KO (jhko@skku.edu/

## Slide 63

Thank you!
Questions or comments?
」ong Hwan KO
SungKyunKwan University, Korea
Department Of lnformation and Communication Engineering
jhko@skku.edu
IRIS Lab., SKKU
63
Jong Hwan KO (jhko@skku.edu/
