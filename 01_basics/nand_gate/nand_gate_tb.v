`timescale 1ns / 1ps

module nand_gate_tb;
    reg a, b;
    wire y;

    nand_gate uut (
        .a(a),
        .b(b),
        .y(y)
    );

    // generate waveform file
    initial begin
        $dumpfile("nand_gate.vcd");
        $dumpvars(0, nand_gate_tb);
    end

    // terminal monitor
    initial begin
        $monitor("Time=%0t | a=%b b=%b | y=%b", $time, a, b, y);
        a = 0; b = 0; #10; // #10 = delay 10 nanoseconds
        a = 0; b = 1; #10; 
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end

endmodule;