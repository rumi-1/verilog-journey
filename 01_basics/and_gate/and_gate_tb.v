`timescale 1ns / 1ps

module and_gate_tb;
    reg a, b;
    wire o;

    and_gate uut (
        .a(a),
        .b(b),
        .o(o)
    );

    // generate waveform file
    initial begin
        $dumpfile("and_gate.vcd");
        $dumpvars(0, and_gate_tb);
    end

    // terminal monitor
    initial begin
        $monitor("Time=%0t | a=%b b=%b | o=%b", $time, a, b, o);
        a = 0; b = 0; #10; // #10 = delay 10 nanoseconds
        a = 0; b = 1; #10; 
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end

endmodule