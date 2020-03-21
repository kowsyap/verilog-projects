`include "tff1.v"
module rcc4(clk,reset,q);
output[3:0] q;
input clk,reset;

tff1 tff0(1'b1,clk,reset,q[0]);
tff1 tff111(1'b1,q[0],reset,q[1]);
tff1 tff2(1'b1,q[1],reset,q[2]);
tff1 tff3(1'b1,q[2],reset,q[3]);


endmodule