# 4-Bit Register

## Overview

This project implements a synchronous 4-bit register in Verilog. The register stores a 4-bit input value and updates its output only on the rising edge of the clock.

## Features

* 4-bit data storage
* Positive edge-triggered operation
* Synchronous data transfer
* RTL and testbench implementation

## Inputs

| Signal | Width | Description  |
| ------ | ----- | ------------ |
| clk    | 1     | System clock |
| d      | 4     | Input data   |

## Outputs

| Signal | Width | Description        |
| ------ | ----- | ------------------ |
| q      | 4     | Stored output data |

## RTL Logic

```verilog
always @(posedge clk)
    q <= d;
```

## Simulation Results

The testbench applies all 16 possible 4-bit input combinations. The waveform verifies that the output updates only at the rising edge of the clock.

## Concepts Learned

* Sequential Logic
* Registers
* Clocked Circuits
* Non-blocking Assignments
* Testbench Development

## Author

Vivek Rai
