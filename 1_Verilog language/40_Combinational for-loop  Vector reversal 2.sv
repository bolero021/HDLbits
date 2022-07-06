module top_module( 
    input  logic [99:0] in,
    output logic [99:0] out
);

    always_comb 
    begin
        for (integer i = 0; i < 100; i++) 
        begin
            out[i] = in[99-i];
        end
    end
endmodule