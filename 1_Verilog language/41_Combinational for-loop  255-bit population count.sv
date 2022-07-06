module top_module( 
    input  logic [254:0] in,
    output logic [7:0]   out );

    always_comb 
    begin
        out = 0;
        for (integer i = 0; i < 255; i++ ) 
        begin
            if (in[i]) 
                out = ++out;
            else
                out = out;
        end    
    end
endmodule