# AND Gate
## Concept
A 2-input NAND Gate outputs HIGH only when both of the inputs are *not* HIGH.
Effectively HIGH when at least one input is 0. 
Models CMOS transmission gate behavior at a logic level.

## Truth Table
| a | b | y |
|---|---|---|
| 0 | 0 | 1 |
| 0 | 1 | 1 |
| 1 | 0 | 1 |
| 1 | 1 | 0 |
## Waveform
![Waveform](waveform.png)
## Files
- `nand_gate.v`    | module
- `nand_gate_tb.v` | testbench
- `nand_gate.vcd`  | .vcd waveform