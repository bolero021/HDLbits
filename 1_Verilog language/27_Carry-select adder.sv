module top_module(
    input  logic [31:0] a,
    input  logic [31:0] b,
    output logic [31:0] sum
);
    
    logic w1, sel;
    logic [15:0] sum0, sum1;

    add16 instance1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(sum[15:0]), .cout(sel));
    add16 instance2 (.a(a[31:16]), .b(b[31:16]), .cin(1'b0), .sum(sum0));
    add16 instance3 (.a(a[31:16]), .b(b[31:16]), .cin(1'b1), .sum(sum1));

    always_comb
    case (sel)
        0: sum[31:16] = sum0;
        1: sum[31:16] = sum1;
    endcase
endmodule