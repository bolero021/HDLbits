module top_module( 
    input  logic [99:0] in,
    output logic [98:0] out_both,
    output logic [99:1] out_any,
    output logic [99:0] out_different );

    always_comb begin : both
        for ( integer i=0 ;i<99 ;i++ ) begin
            if (in[i]&in[i+1]) begin
                out_both[i] = 1;
            end else begin
                out_both[i] = 0;
            end
        end
    end

    always_comb begin : any
        for ( integer i=1 ;i<100 ;i++ ) begin
            if (in[i]|in[i-1]) begin
                out_any[i] = 1;
            end else begin
                out_any[i] = 0;
            end
        end
    end

    always_comb begin : different
        for ( integer i=0 ;i<100 ;i++ ) begin
            if (i == 99) begin
                if (in[i]^in[0]) begin
                    out_different[i] = 1;
                end else begin
                    out_different[i] = 0;
                end
            end 
            else if (in[i]^in[i+1]) begin
                    out_different[i] = 1;
                end else begin
                    out_different[i] = 0;
                end
        end
    end
endmodule
