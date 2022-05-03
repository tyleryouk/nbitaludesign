module rc_adder_slice (
   input logic a,b,c_in, 
   output logic s, c_out
);

    logic p, g;

    assign p = a ^ b;
    assign g = a & b;

    assign s =  a^b^c_in;
    assign c_out = ((a^b)&c_in) | (a&b);

endmodule