`include "jkff.v"
module rcc4jk(clk,reset,q);
output[3:0] q;
input clk,reset;

jkff jkff0(1'b1,1'b1,clk,reset,q[0]);
jkff jkff111(1'b1,1'b1,q[0],reset,q[1]);
jkff jkff2(1'b1,1'b1,q[1],reset,q[2]);
jkff jkff3(1'b1,1'b1,q[2],reset,q[3]);


endmodule