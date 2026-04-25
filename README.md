# Digital Design using Verilog

This repository contains fundamental digital design implementations using Verilog, along with optimized gate-level designs and simulation-based verification.
   
## About Me

I am Devjit Pramanik, a first-year ECE student exploring digital design and hardware systems. I am currently focused on building a strong foundation in digital logic and Verilog through hands-on projects and simulation.
I enjoy understanding how hardware works at a fundamental level and aim to gradually progress towards designing complex systems such as processors and system-level architectures.
I believe in learning by building and verifying real implementations rather than only studying theory.

## Projects Included

### 1. Half Adder
- Adds two single-bit inputs
- Outputs: SUM and CARRY

### 2. Full Adder
- Adds three inputs (A, B, Cin)
- Outputs: SUM and Cout

### 3. 2-bit Adder 
- Adds two 2-bit binary numbers
- Built using Half Adder and Full Adder (modular design)

### 4. 4-bit Ripple Carry Adder 
- Adds two 4-bit binary numbers
- Implemented using four full adders (modular design)
- Also demonstrates carry propagation from LSB to MSB (ripple carry effect) 

## Waveform Results

### Half Adder
![Half Adder Waveform](wave_half.png)

### Full Adder
![Full Adder Waveform](wave_full.png)

### 2-bit Adder
![2-bit Adder Waveform](wave_twobit.png)

### 4-bit Ripple Carry Adder
![4-bit Adder Waveform](wave_fourbit.png)

## NAND-Based Implementations (Universal Gate Design)

To strengthen understanding of digital logic, the following circuits have been implemented using only NAND gates:

- NOT using NAND
- AND using NAND
- OR using NAND
- XOR using NAND (4-gate optimal design)
- XNOR using NAND (5-gate optimal design)
- Half Adder using NAND (optimized to 5 gates using signal reuse)
- Full Adder using NAND (optimized to 9 gates using intermediate signal reuse)

These implementations demonstrate how complex digital circuits can be constructed using a single universal gate while minimizing redundant computations.

## Concepts Covered
- Logic Gates
- Combinational Circuits
- Universal Gates (NAND/NOR)
- Modular Design in Verilog
- Gate-Level Optimization
- Testbench Writing
- Simulation and Verification
- Waveform Analysis

## Tools Used
- Icarus Verilog
- GTKWave

## Interests and Goals

I am deeply interested in digital design, computer architecture, and hardware system development.

My focus is on building a strong foundation in:
- Verilog and SystemVerilog (RTL design)
- Digital circuits and their implementation
- Hardware simulation and verification
- FPGA-based system design

I am particularly interested in processor design and architecture, and I aim to work towards designing complete systems, including RISC-V based processors and System-on-Chip (SoC) architectures.


Currently, I am following a structured learning path that involves hands-on projects, simulation, and gradual progression towards advanced hardware design and architecture concepts.
