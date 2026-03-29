`timescale 1ns / 1ps

module not_gate_tb;
    reg a;
    wire y;

    not_gate uut (
        .a(a),
        .y(y)
    );

 // generate waveform file
    initial begin
        $dumpfile("not_gate.vcd");
        $dumpvars(0, not_gate_tb);
    end

    // terminal monitor
    initial begin
        $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
        a = 0; #10; // #10 = delay 10 nanoseconds
        a = 1; #10
        $finish;
    end
endmodule