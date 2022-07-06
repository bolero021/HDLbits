module top_module( 
    input  logic [99:0] a, b,
    input  logic 		cin,
    output logic [99:0] cout,
    output logic [99:0] sum );

    always_comb 
    begin
    cin = 0;
        for (i = 0; i < 100; i++) 
        begin
            {cout[i], sum[i]} = a[i] + b[i] + cin;
            cin = cout[i];
        end    
    end
endmodule