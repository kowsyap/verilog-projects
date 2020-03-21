`include "concatenate8.v"
`include "kpg1_8.v"
`include "kpg2_8.v"
`include "kpg3_8.v"
`include "gkconv.v"
`include "xor3.v"
`include "endd.v"

module rd8(a,b,sum,carry);

input signed[7:0] a,b;
output signed[7:0] sum;
output carry;
wire [15:0] conc,kpg1,kpg2,kpg3;
wire[7:0] vip;
wire[1:0] sc;
wire s;
concatenate8 concc(a,b,conc,sc);   
kpg1_8 kpg11(conc,kpg1);
kpg2_8 kpg22(kpg1,kpg2);
kpg3_8 kpg33(kpg2,kpg3,s);
gkconv gkconv11(kpg3,vip);
xor3 xor11(a,b,vip,sum);
endd endd11(s,sc,carry);
endmodule