`include "tff.v"
module rcc16(clk,reset,q);
output[15:0] q;
input clk,reset;

tff tff0(clk,reset,q[0]);
tff tff1(q[0],reset,q[1]);
tff tff2(q[1],reset,q[2]);
tff tff3(q[2],reset,q[3]);
tff tff4(q[3],reset,q[4]);
tff tff5(q[4],reset,q[5]);
tff tff6(q[5],reset,q[6]);
tff tff7(q[6],reset,q[7]);
tff tff8(q[7],reset,q[8]);
tff tff9(q[8],reset,q[9]);
tff tff10(q[9],reset,q[10]);
tff tff11(q[10],reset,q[11]);
tff tff12(q[11],reset,q[12]);
tff tff13(q[12],reset,q[13]);
tff tff14(q[13],reset,q[14]);
tff tff15(q[14],reset,q[15]);
endmodule