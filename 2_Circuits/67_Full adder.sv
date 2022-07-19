module top_module( 
    input  logic a, b, cin,
    output logic cout, sum );

    assign {cout, sum} = a + b + cin;
endmodule
