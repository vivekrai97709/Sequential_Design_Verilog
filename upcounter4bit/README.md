# 4-Bit Up Counter

## Overview

This project implements a synchronous 4-bit binary up counter using Verilog. The counter increments its value by one on every rising edge of the clock and resets to zero when the reset signal is asserted.

## Features

* Synchronous counting
* Asynchronous reset
* Modulo-16 operation
* RTL and testbench implementation

## Inputs

| Signal | Width | Description       |
| ------ | ----- | ----------------- |
| clk    | 1     | System clock      |
| rst    | 1     | Active-high reset |

## Outputs

| Signal | Width | Description    |
| ------ | ----- | -------------- |
| q      | 4     | Counter output |

## RTL Logic

```verilog
always @(posedge clk or posedge rst)
begin
    if(rst)
        q <= 4'b0000;
    else
        q <= q + 1;
end
```

## State Sequence

```text
0000
0001
0010
0011
0100
...
1111
0000
```

## Simulation Results

Waveforms confirm proper reset operation and continuous counting from 0 to 15 before wrapping back to 0.

## Concepts Learned

* Counters
* State Retention
* Sequential Design
* Reset Logic
* Verification using GTKWave

## Author

Vivek Rai
