module top_module ( 
    input  logic [1:0] A, 
    input  logic [1:0] B, 
    output logic       z ); 

    logic m1, m2, m3, m4;

    assign m1 = (~A[0]) & (~A[1]) & (~B[0]) & (~B[1]);
    assign m2 = (~A[0]) & A[1] & (~B[0]) & B[1];
    assign m3 = A[0] & (~A[1]) & B[0] & (~B[1]);
    assign m4 = A[0] & A[1] & B[0] & B[1];

    assign z = m1 | m2 | m3 | m4;
endmodule
