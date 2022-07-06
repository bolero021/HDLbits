module top_module( 
    input  logic x3,
    input  logic x2,
    input  logic x1,  // three inputs
    output logic f   // one output
);

    logic m2, m3, m5, m7;

    assign m2 = (~x3) & x2 & (~x1);
    assign m3 = (~x3) & x2 & x1;
    assign m5 = x3 & (~x2) & x1;
    assign m7 = x3 & x2 & x1;

    assign f = m2 | m3 | m5 | m7;
endmodule
