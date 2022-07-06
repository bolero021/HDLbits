module top_module ( 
    input  logic       clk, 
    input  logic [7:0] d, 
    input  logic [1:0] sel, 
    output logic [7:0] q 
);
    
    logic [7:0] w1, w2, w3;

    my_dff8 instance1 (.clk(clk), .d(d), .q(w1));
    my_dff8 instance2 (.clk(clk), .d(w1), .q(w2));
    my_dff8 instance3 (.clk(clk), .d(w2), .q(w3));

    always_comb
    case (sel)
        0: q = d;
        1: q = w1;
        2: q = w2;
        3: q = w3;
    endcase
endmodule