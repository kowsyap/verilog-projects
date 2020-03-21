`include "tff1.v"
module rc162(clk,reset,q);
output[15:0] q;
input clk,reset;

tff1 tff0(1'b1,clk,reset,q[0]);
tff1 tff111(1'b1,q[0],reset,q[1]);
tff1 tff2(1'b1,q[1],reset,q[2]);
tff1 tff3(1'b1,q[2],reset,q[3]);
tff1 tff4(1'b1,q[3],reset,q[4]);
tff1 tff5(1'b1,q[4],reset,q[5]);
tff1 tff6(1'b1,q[5],reset,q[6]);
tff1 tff7(1'b1,q[6],reset,q[7]);
tff1 tff8(1'b1,q[7],reset,q[8]);
tff1 tff9(1'b1,q[8],reset,q[9]);
tff1 tff10(1'b1,q[9],reset,q[10]);
tff1 tff11(1'b1,q[10],reset,q[11]);
tff1 tff12(1'b1,q[11],reset,q[12]);
tff1 tff13(1'b1,q[12],reset,q[13]);
tff1 tff14(1'b1,q[13],reset,q[14]);
tff1 tff15(1'b1,q[14],reset,q[15]);
endmodule