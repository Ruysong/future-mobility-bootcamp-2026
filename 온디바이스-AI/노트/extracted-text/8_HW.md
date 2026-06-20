# 8_HW

- Source: [8_HW.pptx](<../../교안/8_HW.pptx>)
- Note: This file was auto-extracted for search and review. Check the original material for layout, figures, and tables.

## Slide 1

Lecture 6: Polling and Interrupt
미래차
부트캠프
On-device

AI
Jong Hwan Ko
Associate Professor
SungKyunKwan
University, Korea
Department of Electrical and Computer Engineering
jhko@skku.edu

## Slide 2

8. AI Accelerators
Microarchitecture
Processing elements (PEs)
Parallelization
Pipelining
Interleaving
Dataflow architecture
Temporal/spatial data reuse
Input/output/weight stationary
Temporal/spatial architectures
AI accelerator trends
2

## Slide 3

Architecture – Microarchitecture – Circuits
Architecture
ISA (instruction set architecture)
Dataflow/Parallelism
FLOPs – Mem BW
Design decisions:
Precision
Sparsity
Microarchitecture
Arithmetic unit design
Memory organization
Circuits
Digital circuits from gates
Analog circuits from transistors
8. AI Accelerators
3
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 4

Processing Element (PE)
y = x
.
w = x0w0 + x1w1 + … + xnwn
x
0
x
1
x
n
…
w
0
w
1
w
n
…
x0
w0
x0w0
0
x0w0
8. AI Accelerators
4
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 5

y = x
.
w = x0w0 + x1w1 + … + xnwn
x
0
x
1
x
n
…
w
0
w
1
w
n
…
x0w0
x1
w1
x1w1
x0w0 +x1w1
Processing Element (PE)
8. AI Accelerators
5
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 6

y = x
.
w = x0w0 + x1w1 + … + xnwn
x
0
x
1
x
n
…
w
0
w
1
w
n
…
x0w0 +x1w1
x2
w2
x2w2
x0w0 +x1w1 +x2w2
Processing Element (PE)
8. AI Accelerators
6
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 7

Parallelization (or Vectorization)
y = x
.
w = x0w0 + x1w1 + … + xnwn
w1
x1
w0
x0
w3
x3
w2
x2
?
8. AI Accelerators
7
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 8

y = x
.
w = x0w0 + x1w1 + … + xnwn
w1
x1
w0
x0
w3
x3
w2
x2
Adder Tree
Parallelization (or Vectorization)
8. AI Accelerators
8
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 9

y = x
.
w = x0w0 + x1w1 + … + xnwn
0
w1
x1
w0
x0
w3
x3
w2
x2
x0w0
x1w1
x2w2
x3w3
x0w0+x1w1+x2w2+x3w3
Parallelization (or Vectorization)
8. AI Accelerators
9
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 10

y = x
.
w = x0w0 + x1w1 + … + xnwn
x0w0 +x1w1 +x2w2 +x3w3
w5
x5
w4
x4
w7
x7
w6
x6
x4w4
x5w5
x6w6
x7w7
x4w4+x5w5+x6w6+x7w7
Parallelization (or Vectorization)
8. AI Accelerators
10
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 11

Adder Tree
Multipliers
Accumulator
Parallelization (or Vectorization)
8. AI Accelerators
11
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 12

b
a
d
c
f
e
h
g
1 cycle
Pipelining
8. AI Accelerators
12
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 13

d
c
ab
f
e
h
g
1 cycle
Pipelining
8. AI Accelerators
13
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 14

f
e
cd
h
g
ab
1 cycle
Pipelining
8. AI Accelerators
14
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 15

h
g
ef
cd
ab
1 cycle
Pipelining
8. AI Accelerators
15
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 16

b
a
gh
d
c
f
e
h
g
ef
cd
ab
Latency = 1 cycle
What is my throughput?
1 op/cycle
Pipelining
8. AI Accelerators
16
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 17

b
a
gh
d
c
f
e
h
g
ef
cd
ab
Latency = 5 cycles
Now, what is my throughput?
1 op/
cycle
if fully pipelined
Pipelining
8. AI Accelerators
17
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 18

b
a
gh
d
c
f
e
h
g
ef
cd
ab
Latency = 5 cycles
Now, what is my throughput?
1 op/
cycle
if fully pipelined
y
x
Space to store
intermediate results
Allows you to start a new op per cycle
Pipelining
8. AI Accelerators
18
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 19

Accumulator
What about accumulators?
Could be different because
they have a data dependency
Pipelining
8. AI Accelerators
19
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 20

Pipelining and Interleaving
0
latency=1 cycle
a
b
c
d
8. AI Accelerators
20
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 21

a
a
latency=1 cycle
b
c
d
Pipelining and Interleaving
8. AI Accelerators
21
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 22

a+b
a+b
latency=1 cycle
c
d
Pipelining and Interleaving
8. AI Accelerators
22
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 23

a+b+c
a+b+c
latency=1 cycle
d
Pipelining and Interleaving
8. AI Accelerators
23
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 24

a+b+c+d
a+b+c+d
latency=1 cycle
What is my throughput?
1 op/
cycle
Pipelining and Interleaving
8. AI Accelerators
24
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 25

0
Latency = 2 cycle
b
c
d
Now, what is my throughput?
cycle = 1
stall!
a
Pipelining and Interleaving
8. AI Accelerators
25
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 26

a
Latency = 2 cycle
b
c
d
Now, what is my throughput?
cycle = 2
0.5 ops/cycle  –
data dependency stalls my pipeline!
Note: II = 2
Pipelining and Interleaving
8. AI Accelerators
26
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 27

Interleaving
Latency = 2 cycle
Interleave operands
a
b
c
Duplicate registers
x
y
z
8. AI Accelerators
27
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 28

0
a
b
c
0
x
y
z
cycle = 1
Interleaving
8. AI Accelerators
28
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 29

0
b
c
a
x
y
z
cycle = 2
Interleaving
8. AI Accelerators
29
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 30

a
b
c
x
y
z
cycle = 3
Interleaving
8. AI Accelerators
30
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 31

x
c
a+b
y
z
cycle = 4
Interleaving
8. AI Accelerators
31
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 32

a+b
c
x+y
z
cycle = 5
Interleaving
8. AI Accelerators
32
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 33

x+y
a+b+c
a+b+c
z
cycle = 6
Interleaving
8. AI Accelerators
33
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 34

a+b+c
x+y+z
x+y+z
a+b+c
cycle = 7
Latency = 2 cycle
Now, what is my throughput?
1 op/cycle
Note: II = 1
Interleaving
8. AI Accelerators
34
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 35

Vectorization, Pipelining and Interleaving
Adder Tree
Multipliers
Accumulator
Pipelining
Interleaving
8. AI Accelerators
35
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 36

Data Reuse
Temporal Reuse
Read once from memory, use same data multiple times by same PE
Memory
PE
x
Spatial Reuse
Read once from memory, use same data
multiple times by multiple PEs
Memory
PE
x
PE
x
PE
x
3
1
2
5
Reuse entry multiple times from a single memory read
3
3
3
Reuse entry multiple times from a single memory read
8. AI Accelerators
36
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 37

Temporal Reuse Example
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020
Reuse Distance
Number of memory accesses
Size of your on-chip memory
Smaller is better
8. AI Accelerators
37

## Slide 38

Spatial Reuse Example
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020
Why a smaller reuse distance
with spatial reuse?
Fewer memory read ports
Less area
Fewer reads
Less power
8. AI Accelerators
38

## Slide 39

Weight

Stationary
+
+
+
+
+
+
+
8. AI Accelerators
39
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 40

a0w0
a1w1
a2w2
a3w3
a4w4
a5w5
a6w6
a7w7
+
+
+
+
+
+
+
Weight

Stationary
8. AI Accelerators
40
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 41

+
+
+
+
+
+
+
Input

Stationary
8. AI Accelerators
41
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 42

a0w0
a1w1
a2w2
a3w3
a4w4
a5w5
a6w6
a7w7
+
+
+
+
+
+
+
Input

Stationary
8. AI Accelerators
42
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 43

+
+
+
+
+
+
+
Output

Stationary
8. AI Accelerators
43
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 44

a0w0
b0w0
c0w0
d0w0
e0w0
f0w0
g0w0
h0w0
+
+
+
+
+
+
+
+
a1w1
b1w1
c1w1
d1w1
e
1
w1
f
1
w1
g
1
w1
h
1
w1
Output

Stationary
8. AI Accelerators
44
Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020

## Slide 45

Source: V. Sze et al. “Efficient Processing of Deep Neural Networks” 2020
Temporal/Spatial Architectures
8. AI Accelerators
45

## Slide 46

Systolic Array: Matrix Multiply Example
8. AI Accelerators
46
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 47

Systolic Array: Matrix Multiply Example
8. AI Accelerators
47
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 48

Systolic Array: Matrix Multiply Example
8. AI Accelerators
48
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 49

Systolic Array: Matrix Multiply Example
8. AI Accelerators
49
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 50

Systolic Array: Matrix Multiply Example
8. AI Accelerators
50
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 51

Systolic Array: Matrix Multiply Example
8. AI Accelerators
51
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 52

Systolic Array: Matrix Multiply Example
8. AI Accelerators
52
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 53

______ stationary?
Systolic Array: Matrix Multiply Example
8. AI Accelerators
53
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 54

8. AI Accelerators
Various Types
Flexible
Efficient
54

## Slide 55

8. AI Accelerators
Performance/efficiency trend
55
0.1 TOPS/W
10 TOPS/W
1000 TOPS/W
1. Extreme edge
2. Embedded edge
3. Mobility
4. Portable
5. General
Power (W)
TOPS (Tera Operations Per Second)
ASIC
Mobile GPU
Mobile AP
FPGA
GPU
Neuromorphic

## Slide 56

8. AI Accelerators
Supports for Improvement
Architectural support for quantization/pruning brings tremendous improvement
FP32 => FP16 => Int8
dense => sparse
56
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)
Huang's law claims that
a synergy between
hardware
,
software
and
artificial intelligence
makes the new 'law' possible.
Huang said, “The innovation isn’t just about chips,” he said,
“It’s about the entire stack.”

## Slide 57

8. AI Accelerators
NVIDIA Cloud AI HW
57
Adapted from “
TinyML
and Efficient Deep Learning Computing” Lecture (Fall 2024) by Prof. Song Han (MIT)

## Slide 58

8. AI Accelerators
Nvidia Jetson
NVIDIA Jetson is a complete System on Module (SOM) that includes a GPU, CPU, memory, power management, high-speed interfaces, and more
58
Adapted from “
TinyML
and Efficient Deep Learning Computing” Lecture (Fall 2024) by Prof. Song Han (MIT)

## Slide 59

8. AI Accelerators
Microcontroller
A compact integrated circuit designed for embedded systems.
A typical microcontroller includes a processor, memory and input/output (I/O) peripherals on a single
chip
59
Adapted from “
TinyML
and Efficient Deep Learning Computing” Lecture (Fall 2024) by Prof. Song Han (MIT)

## Slide 60

8. AI Accelerators
Qualcomm Hexagon DSP
A family of digital signal processor (DSP) products by Qualcomm.
It is designed to deliver performance with low power over a variety of applications
60
Adapted from “
TinyML
and Efficient Deep Learning Computing” Lecture (Fall 2024) by Prof. Song Han (MIT)

## Slide 61

8. AI Accelerators
Apple Neural Engine
An energy-eﬃcient and high-throughput engine for ML inference on Apple silicon
61
Adapted from “
TinyML
and Efficient Deep Learning Computing” Lecture (Fall 2024) by Prof. Song Han (MIT)

## Slide 62

Cost of an ASIC
The software cost dominates the cost breakdown of advanced technology nodes
We focus on designing new algorithms and software for eﬃcient computing.
Most of the cost goes to software engineers!
8. AI Accelerators
62
Adapted from “Machine Learning Hardware and Systems” Lecture (Fall 2024) by Prof. M. Abdelfattah (Cornell

Tech
)

## Slide 63

Lecture 6: Polling and Interrupt
Thank you!
63
Questions or comments?
Jong Hwan Ko
SungKyunKwan
University, Korea
Department of Information and Communication Engineering
jhko@skku.edu
