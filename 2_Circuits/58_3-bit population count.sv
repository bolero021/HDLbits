module top_module( 
    input  logic [2:0] in,
    output logic [1:0] out );

    always_comb 
    begin
    out = 0;
        for (integer i=0; i<3; i++ ) 
        begin
            if (in[i]) 
                out = ++out;
            else 
                out = out;  
        end
    end
endmodule