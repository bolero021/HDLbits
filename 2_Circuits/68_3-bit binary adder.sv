module top_module( 
    input  logic [2:0] a, b,
    input  logic 	   cin,
    output logic [2:0] cout,
    output logic [2:0] sum );

    logic [2:0] w;
    adder1 instance1 (.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(w[0]));
    adder1 instance2 (.a(a[1]), .b(b[1]), .cin(w[0]), .sum(sum[1]), .cout(w[1]));
    adder1 instance3 (.a(a[2]), .b(b[2]), .cin(w[1]), .sum(sum[2]), .cout(w[2]));

    assign cout = w;
endmodule

module adder1( 
    input  logic a, b, cin,
    output logic cout, sum );

    assign {cout, sum} = a + b + cin;
endmodule