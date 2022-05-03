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
    assign co   =      // COMPLETE THIS LINE


    alu_slice U[N-1:0] ( // COMPLETE 
    );



endmodule