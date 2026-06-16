# 4-Bit Serial-In Shift Register

## Overview

This project implements a 4-bit Serial-In Shift Register in Verilog. Data is shifted into the register one bit at a time on each rising edge of the clock.

## Features

* Serial data input
* Positive edge-triggered operation
* Active-high reset
* RTL and testbench implementation

## Inputs

| Signal | Width | Description       |
| ------ | ----- | ----------------- |
| clk    | 1     | System clock      |
| rst    | 1     | Active-high reset |
| d      | 1     | Serial data input |

## Outputs

| Signal | Width | Description             |
| ------ | ----- | ----------------------- |
| q      | 4     | Shift register contents |

## RTL Logic

```verilog
always @(posedge clk)
begin
    if(rst)
        q <= 4'b0000;
    else
        q <= {q[2:0], d};
end
```

## Example Operation

Input Sequence:

```text
1 → 0 → 1 → 1
```

Register Contents:

```text
0001
0010
0101
1011
```

## Simulation Results

Waveforms verify correct serial data shifting and register updates on clock edges.

## Concepts Learned

* Shift Registers
* Bit Slicing
* Concatenation
* Sequential Logic
* Serial Data Transfer

## Author

Vivek Rai
