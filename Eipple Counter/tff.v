`include "negdff.v"
module tff(clk,reset,q);
input clk,reset;
output q;
wire d;
negdff dff0(clk,d,reset,q);
not n1(d,q);
endmodule