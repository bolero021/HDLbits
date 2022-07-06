module top_module( 
    input  logic [99:0] in,
    output logic 		out_and,
    output logic 		out_or,
    output logic 		out_xor 
);

    assign out_and = & in[99:0];
    assign out_or  = | in[99:0];
    assign out_xor = ^ in[99:0];
endmodule
