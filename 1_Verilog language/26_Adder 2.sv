module top_module (
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] sum
);
    
    logic w;

    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(w));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(w), .sum(sum[31:16]));

endmodule


module add1 ( input logic a, input logic b, input logic cin,  output logic sum, output logic cout );

    assign {cout, sum} = a + b + cin;

endmodule

