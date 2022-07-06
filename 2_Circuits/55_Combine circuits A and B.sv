module top_module (
    input  logic x, 
    input  logic y, 
    output logic z);

    logic [3:0] w;

    A instance1 (.x(x), .y(y), .z(w[0]));
    B instance2 (.x(x), .y(y), .z(w[1]));
    A instance3 (.x(x), .y(y), .z(w[2]));
    B instance4 (.x(x), .y(y), .z(w[3]));

    assign z = (w[0] | w[1]) ^ (w[2] & w[3]);
endmodule

module A (
    input  logic x, 
    input  logic y, 
    output logic z );
    
    assign z = (x ^ y) & x;
endmodule

module B (
    input  logic x, 
    input  logic y, 
    output logic z );

    assign z = ~ (x ^ y);
endmodule