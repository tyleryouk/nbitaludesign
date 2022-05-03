module gen_alu #(
    parameter N = 8
) (
    input  logic [N-1:0] a, b,
    input  logic   [1:0] f, 
    output logic [N-1:0] s,
    output logic         co 
);

    logic [N:0] c;

    assign c[0] = f[0];
    assign co = c[N];     // COMPLETE THIS LINE


    alu_slice U[N-1:0] ( // COMPLETE 
       .a(a), 
       .b(b), 
       .f(f),
       .s(s),
       .c_out(c[N:1]), // c array output = c [8 to 1]
       .c_in(c[N-1:0]) // c array input = c [7 to 0] 
    );



endmodule