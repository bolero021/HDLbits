module top_module( 
    input  logic a, b,
    output logic cout, sum );

    assign {cout, sum} = a + b;
endmodule
