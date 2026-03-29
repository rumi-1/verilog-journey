# Verilog Learning Journey
A structured, ground-up study of Verilog and FPGA programming — built to develop
genuine low-level understanding of digital hardware design. This repository tracks
my progress, serves as a reference, and functions as a portfolio for future
employment and internships.
---
## Goals
- Build deep conceptual understanding of digital logic and hardware description
- Learn industry-relevant Verilog design patterns and testbench methodology
- Simulate and verify every module — no untested code
- Document the "why" behind each concept, not just the implementation
---
## Roadmap
| Phase | Topic | Status |
|-------|-------|--------|
| 01 | Logic gates & basic modules | 🟡 In progress |
| 02 | Combinational circuits (adders, muxes, decoders) | ⬜ Upcoming |
| 03 | Sequential logic (flip-flops, registers, counters) | ⬜ Upcoming |
| 04 | Finite state machines | ⬜ Upcoming |
| 05 | Memory (RAM, ROM) | ⬜ Upcoming |
| 06 | Capstone projects | ⬜ Upcoming |
---
## Tools & Environment
- **Language:** Verilog (IEEE 1364)
- **Simulator:** Icarus Verilog
- **Waveform viewer:** GTKWave / WaveTrace (VSCode)
- **IDE:** VSCode with Verilog-HDL/SystemVerilog extension
- **Platform:** macOS (Apple Silicon)
---
## Repository Structure
Each topic folder contains:
- `.v` source module
- `_tb.v` testbench
- Waveform screenshot
- `README.md` explaining the underlying concept
---
## Running a Simulation
```bash
iverilog -o module_sim module.v module_tb.v
vvp sim
gtkwave output.vcd
```