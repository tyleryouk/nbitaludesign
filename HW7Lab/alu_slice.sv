module alu_slice (
    input  logic       a, b, c_in,
    input  logic [1:0] f,
    output logic       s, c_out
);

    logic b_inv, c;

    assign b_inv = b ^ f[0];
    assign c = c_in & f[1];  // COMPLETE THIS LINE

    rc_adder_slice U1 (      // COMPLETE
        .a(a),
        .b(b_inv),
        .c_in(c),
	.s(s),
	.c_out(c_out)
);

endmodule