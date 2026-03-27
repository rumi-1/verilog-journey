# Environment Setup
I will be using *Icarus Verilog* to emulate an FPGA board, and *GTKWave* to view waveforms. VSCode is the IDE choice considering good plugin support for Verilog. Some plugins include:
- Verilog-HDL/SystemVerilog/Bluespec — syntax highlighting, linting, auto-complete
- WaveTrace — view .vcd waveforms directly in VSCode without switching to GTKWave
I eventually want to try Vim, but focusing on the fundamentals of actual Verilog is more important, rather than simultaneously trying to learn how to use Vim. 
## Compile and Run
To compile the Verilog code:
`iverilog -o output input.v input_tb.v`
To run and emulate results using Icarus Verilog runtime engine:
`vvp output`
If using `dumpfile` for waveform analysis, it can be opened with GTKWave:
`gtkwave output.vcd`