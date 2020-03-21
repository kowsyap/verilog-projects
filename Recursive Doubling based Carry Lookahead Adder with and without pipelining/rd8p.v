`include "concatenate8.v"
`include "kpg1_8.v"
`include "kpg2_8.v"
`include "kpg3_8.v"
`include "gkconv.v"
`include "xor3.v"
`include "endd.v"
`include "pipe8.v"

module rd8p(clk,reset,a,b,sum,carry);
input clk,reset;
input[7:0] a,b;
output[7:0] sum;
output carry;
wire [15:0] conc,kpg1,kpg2,kpg3,conc1,kpg11,kpg22,kpg33;
wire[7:0] vip,a1,a2,a3,a4,b1,b2,b3,b4;
wire[1:0] sc,sc1,sc2,sc3,sc4;
wire s,s1,ss,ss1,ss2;
concatenate8 concc(a,b,conc,sc);   
pipe8 pi1(clk,a,b,sc,conc,1'b0,reset,a1,b1,sc1,conc1,ss);
kpg1_8 kpg111(conc1,kpg1);
pipe8 pi2(clk,a1,b1,sc1,kpg1,1'b0,reset,a2,b2,sc2,kpg11,ss1);
kpg2_8 kpg222(kpg11,kpg2);
pipe8 pi3(clk,a2,b2,sc2,kpg2,1'b0,reset,a3,b3,sc3,kpg22,ss2);
kpg3_8 kpg333(kpg22,kpg3,s);
pipe8 pi4(clk,a3,b3,sc3,kpg3,s,reset,a4,b4,sc4,kpg33,s1);
gkconv gkconv111(kpg33,vip);

xor3 xor111(a4,b4,vip,sum);

endd endd111(s1,sc4,carry);

endmodule