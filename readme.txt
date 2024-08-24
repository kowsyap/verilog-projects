Respective algorithm and circuit verilog codes are in the followinf folders

# Verilog HDL Code Repository

This repository contains a collection of Verilog HDL codes with corresponding test benches for various digital components and algorithms. These components are fundamental building blocks in digital design and are essential for understanding and developing more complex systems.

## List of Implemented Components and Algorithms

1. **4-Tap FIR Filter**  
   - A finite impulse response filter with 4 taps implemented in Verilog.
   - Includes test benches for functionality validation.

2. **Basic Digital Components**  
   - Adders, Flip-Flops, Multiplexers (MUX), Demultiplexers (DEMUX), RAM, and ROM.
   - Test benches available for each component to verify design integrity.

3. **Arithmetic and Logical Units**  
   - **Array Multiplier**: A basic multiplier using an array structure.
   - **Barrel Shifter**: A high-speed shifter capable of shifting data in multiple directions.
   - **Modified Booth Algorithm Based Radix-4 Multiplier**: An efficient multiplier using the Booth algorithm.
   - **Multiplier Accumulator (MAC)**: Combines multiplication and accumulation for DSP applications.
   - **Wallace Tree Multiplier**: A fast multiplication algorithm that reduces partial product stages.

4. **Division Algorithms**  
   - **Non-Restoring Divider**: Includes versions with and without pipelining for different speed and area trade-offs.
   - Test benches included to demonstrate both versions.

5. **Advanced Adder Designs**  
   - **Recursive Doubling Based Carry Lookahead Adder**: An adder design with and without pipelining for fast carry computation.
   - **Ripple Carry Adder**: A basic adder design for fundamental understanding.

6. **Counters and Shifters**  
   - **Ripple Counter**: An asynchronous counter design using flip-flops.
   - Test benches to verify counting operations.

7. **Floating Point Arithmetic Units**  
   - **Single Precision Floating Point Adder**: For adding IEEE 754 single-precision numbers.
   - **Single Precision Floating Point Divider**: For dividing IEEE 754 single-precision numbers.
   - **Single Precision Floating Point Multiplier**: For multiplying IEEE 754 single-precision numbers.
   - All floating point units are accompanied by test benches for accurate verification.

## Usage

Each module is accompanied by a test bench written in Verilog to simulate and validate its functionality. To run simulations, use a Verilog-compatible simulator such as ModelSim, Xilinx Vivado, or any other HDL simulator.

main file name and test bench file name are given in instructions of following folders

to see the output:
  paste codes in c:/iverilog/bin
  open cmd
  type "cd c:/iverilog/bin" amd enter
  type "iverilog -o exec_name test_bench_name.v" and enter
   ----------eg: iverilog -o rrr rd8_tb.v
  type "vvp exec_name" and enter
   ----------eg: vvp rrr
