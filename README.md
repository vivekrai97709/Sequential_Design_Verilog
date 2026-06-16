# Sequential Digital Design Projects in Verilog

This repository contains a collection of fundamental sequential digital circuits designed and verified using Verilog HDL. The projects focus on understanding storage elements, data transfer, counting mechanisms, and sequential circuit design principles commonly used in FPGA and VLSI development.

---

## Projects Included

### 1. D Flip-Flop (DFF)

A positive-edge triggered D Flip-Flop that serves as the basic storage element in sequential logic systems.

#### Features
- Positive edge-triggered operation
- Stores 1-bit data
- Foundation for all sequential circuits

#### Concepts Learned
- Sequential Logic
- Edge Triggering
- Clocked Circuits
- Non-Blocking Assignments

#### Operation

| Clock Edge | D | Q(next) |
|------------|---|----------|
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |

---

### 2. 4-Bit Register

A synchronous 4-bit register built using D Flip-Flops to store multi-bit data.

#### Features
- Stores 4-bit binary data
- Updates on positive clock edge
- Synchronous operation

#### Concepts Learned
- Register Design
- Data Storage
- Module Instantiation
- Multi-Bit Sequential Logic

#### Example

```
Input  = 1010
Clock ↑
Output = 1010
```

---

### 3. 4-Bit Up Counter

A synchronous modulo-16 counter that increments its value on every clock cycle.

#### Features
- Counts from 0 to 15
- Automatic rollover after 15
- Reset functionality

#### Concepts Learned
- Sequential Counting
- State Retention
- Binary Number Representation
- Counter Design

#### Count Sequence

```
0000
0001
0010
0011
...
1111
0000
```

---

### 4. 4-Bit Serial-In Shift Register

A shift register that accepts serial data and shifts it through the register on each clock cycle.

#### Features
- Serial Data Input
- Left/Right Data Movement
- Sequential Bit Transfer
- Reset Capability

#### Concepts Learned
- Bit Slicing
- Concatenation Operator
- Shift Operations
- Register Transfer Logic

#### Example

Input Stream:

```
1 → 0 → 1 → 1
```

Register Contents:

```
0000
0001
0010
0101
1011
```

---

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- Visual Studio Code
- Git & GitHub

---

## Simulation Flow

```bash
iverilog -o sim rtl/design.v tb/design_tb.v
vvp sim
gtkwave wave.vcd
```

---

## Key Concepts Covered

### Sequential Logic
- D Flip-Flops
- Registers
- Counters
- Shift Registers

### RTL Design
- Module Instantiation
- Clocked Logic
- Reset Logic
- Bit Manipulation
- Register Transfer Operations

### Verification
- Testbench Development
- Waveform Analysis
- Functional Verification
- Simulation-Based Debugging

---

## Learning Outcomes

Through these projects, I gained hands-on experience in:

- Verilog HDL Coding
- RTL Design Methodology
- D Flip-Flop Design
- Register Design
- Counter Design
- Shift Register Design
- Testbench Development
- Waveform Verification using GTKWave
- Sequential Circuit Design
- GitHub-Based Hardware Project Documentation

---

## Future Work

Planned extensions include:

- Traffic Light Controller FSM
- Vending Machine FSM
- Universal Shift Register
- UART Transmitter
- UART Receiver
- Mini UART System
- Single-Cycle CPU

---

## Author

**Vivek Rai**

Electronics and Telecommunication Engineering Student

Areas of Interest:
- Digital Design
- FPGA Development
- Computer Architecture
- VLSI Design
- Embedded Systems

---

## Repository Goal

This repository documents my journey in learning Verilog HDL and digital design by building fundamental sequential circuits from basic storage elements to more advanced hardware building blocks used in modern digital systems.
