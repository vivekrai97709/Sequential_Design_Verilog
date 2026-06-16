# 4-Bit Arithmetic Logic Unit (ALU)

## Overview

This project implements a 4-bit Arithmetic Logic Unit (ALU) capable of performing arithmetic, logical, and shift operations based on a 3-bit select signal.

## Features

* Arithmetic Operations
* Logical Operations
* Shift Operations
* Combinational Logic Design

## Inputs

| Signal | Width | Description      |
| ------ | ----- | ---------------- |
| a      | 4     | Operand A        |
| b      | 4     | Operand B        |
| sel    | 3     | Operation Select |

## Outputs

| Signal | Width | Description  |
| ------ | ----- | ------------ |
| y      | 4     | ALU Result   |
| carry  | 1     | Carry Output |

## Supported Operations

| SEL | Operation |
| --- | --------- |
| 000 | A + B     |
| 001 | A - B     |
| 010 | A AND B   |
| 011 | A OR B    |
| 100 | A XOR B   |
| 101 | A << 1    |
| 110 | A >> 1    |
| 111 | NOT A     |

## Simulation Results

The testbench verifies all supported ALU operations and validates arithmetic overflow conditions.

## Concepts Learned

* Combinational Logic
* Case Statements
* Arithmetic Operators
* Logical Operators
* Data Path Design

## Applications

The ALU is a fundamental component of processors, microcontrollers, and digital signal processing systems.

## Author

Vivek Rai
