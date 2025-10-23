# CMPEN 331: Computer Organization and Design  

## Overview  
This repository contains my coursework, lab assignments, and design projects for **CMPEN 331: Computer Organization and Design** at **Penn State University**.  
The course explored the structure and operation of computer systems at the hardware level, focusing on how processors, memory, and I/O devices work together to execute programs.  

A major component of this course was the design and implementation of a **five-stage pipelined CPU** using the **Xilinx Vivado Design Suite** for FPGA development. This project emphasized how hardware and instruction-level parallelism are used to improve processor performance.  

---

## Repository Contents  
- **Verilog Design Projects**  
  - Implemented combinational and sequential logic modules.  
  - Designed key CPU components such as the ALU, register file, control unit, and memory interface.  
  - Integrated modules to create a functional **five-stage pipelined CPU**.  

- **Assembly Programming**  
  - Developed MIPS assembly programs to test CPU functionality.  
  - Explored instruction encoding, branching, and memory operations.  

- **Lab Files and Test Benches**  
  - Simulation test benches for pipeline verification.  
  - Timing diagrams and synthesis reports from Vivado.  
  - Hardware design documentation for FPGA testing.  

---

## Pipelined CPU Project  
This project focused on implementing a **five-stage pipelined CPU** in Verilog using the **Xilinx Vivado Design Suite** and tested on an FPGA.  

**Pipeline Stages:**  
1. **Instruction Fetch (IF)** – Retrieves the next instruction from memory.  
2. **Instruction Decode (ID)** – Decodes the instruction and reads register operands.  
3. **Execute (EX)** – Performs arithmetic, logic, and branch operations.  
4. **Memory (MEM)** – Handles data access to and from memory.  
5. **Write Back (WB)** – Writes results back into the register file.  

The design integrates hazard detection, forwarding logic, and control mechanisms to maintain data consistency and efficiency across stages.  

---

## Tools and Environment  
- **Hardware Description Language:** Verilog HDL  
- **FPGA Development Tool:** Xilinx Vivado Design Suite  
- **Assembler and Simulator:** SPIM (MIPS Assembler and Debugger)  
- **Simulation Tools:** Synopsys VSS and Vivado Waveform Analyzer  
- **Target Hardware:** Xilinx FPGA  

---

## Topics Covered  
- CPU Datapath and Control Path Design  
- Instruction Set Architecture (MIPS)  
- ALU and Register File Implementation  
- Memory Hierarchy and I/O Systems  
- Pipelining and Hazard Resolution  
- Assembly Programming and Simulation  

---

## What I Learned  
Through this course and project, I gained practical experience in **digital system design** and **computer architecture**.  
Key takeaways include:  
- Designing and simulating hardware components for a pipelined processor.  
- Understanding how **instruction-level parallelism** improves CPU throughput.  
- Implementing **control logic, forwarding, and hazard detection** in Verilog.  
- Writing **MIPS assembly programs** to verify and test CPU operation.  
- Using **Xilinx Vivado** for synthesis, simulation, and FPGA implementation.  

---

## References and Materials  
- *Computer Organization and Design* by Patterson & Hennessy  
- Xilinx Vivado Documentation and FPGA Lab Guides  
- MIPS Instruction Set Reference and SPIM Simulator Resources  

---

## Institution  
**Penn State University**  
Department of Computer Engineering  
Course: **CMPEN 331 – Computer Organization and Design**  
