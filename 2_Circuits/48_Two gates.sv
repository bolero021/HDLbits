module top_module (
    input  logic in1,
    input  logic in2,
    input  logic in3,
    output logic out);
	
    logic w;

    assign w = ~(in1 ^ in2);
    assign out = in3 ^ w;
endmodule
