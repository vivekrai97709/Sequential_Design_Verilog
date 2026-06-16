# D Flip-Flop (Positive Edge Triggered)

## Overview

This project implements a positive edge-triggered D Flip-Flop using Verilog HDL. The flip-flop captures the input data (`D`) on every rising edge of the clock and stores it at the output (`Q`).

## Features

- Positive edge-triggered operation
- Single-bit data storage
- Sequential logic design
- RTL and Testbench implementation

## Inputs

| Signal | Width | Description |
|----------|----------|-------------|
| clk | 1 | Clock input |
| d | 1 | Data input |

## Outputs

| Signal | Width | Description |
|----------|----------|-------------|
| q | 1 | Stored output |

## RTL Logic

```verilog
always @(posedge clk)
begin
    q <= d;
end
```

## Working Principle

The D Flip-Flop samples the input `d` only at the rising edge of the clock.

Example:

| Rising Edge | D | Q(next) |
|------------|---|----------|
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |
| ↑ | 0 | 0 |
| ↑ | 1 | 1 |

Changes in `d` between clock edges do not affect the output.

## Simulation

The testbench generates a periodic clock signal and applies different values to the input `d`.

Expected waveform behavior:

```text
clk : _/‾\_/‾\_/‾\_/‾\_

d   : 0____1____0____1__

q   : 0____1____0____1__
        ↑    ↑    ↑
      Updates only on rising edges
```

## Applications

- Registers
- Counters
- Shift Registers
- Finite State Machines (FSMs)
- Processor Datapaths

## Concepts Learned

- Sequential Logic
- Clocked Circuits
- Flip-Flops
- Non-Blocking Assignments (`<=`)
- Verilog Testbenches

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave
- VS Code
- Git & GitHub

## Author

Vivek Rai
