module top_module (
    input  logic [7:0] a, b, c, d,
    output logic [7:0] min);//

    logic [7:0] m1, m2, m3;
    assign m1 = (a < b) ? a : b;
    assign m2 = (m1 < c) ? m1 : c;
    assign m3 = (m2 < d) ? m2 : d;
    assign min = m3; 
endmodule
