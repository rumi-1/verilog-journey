module half_adder (
    input wire a,
    input wire b,
    output wire s,
    output wire cout
);

xor_gate xor_inst(
    .a(a),
    .b(b),
    .y(s)
);

and_gate and_inst(
    .a(a),
    .b(b),
    .y(cout)
);


endmodule