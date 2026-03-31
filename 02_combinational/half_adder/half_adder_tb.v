`timescale 1ns / 1ps

module half_adder_tb;
    reg a, b;
    wire s, cout;

    // uut = Unit Under Test
    half_adder uut (
        .a(a),
        .b(b),
        .s(s),
        .cout(cout)
    );

    // generate waveform file
    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0, half_adder_tb);
    end

    // terminal monitor
    initial begin
        $monitor("Time=%0t | a=%b b=%b | s=%b | cout=%b ", $time, a, b, s, cout);
        a = 0; b = 0; #10; // #10 = delay 10 nanoseconds
        a = 0; b = 1; #10; 
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;
        $finish;
    end
endmodule