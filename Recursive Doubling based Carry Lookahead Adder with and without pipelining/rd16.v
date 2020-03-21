`include "concatenate16.v"
`include "kpg1_16.v"
`include "kpg2_16.v"
`include "kpg3_16.v"
`include "kpg4_16.v"
`include "gkconv16.v"
`include "xor3_16.v"
`include "endd.v"

module rd16(a,b,sum,carry);

input[15:0] a,b;
output[15:0] sum;
output carry;
wire [31:0] conc,kpg1,kpg2,kpg3,kpg4;
wire[15:0] vip;
wire[1:0] sc;
wire s;
concatenate16 conccc(a,b,conc,sc);  
kpg1_16 kpg111(conc,kpg1);
kpg2_16 kpg222(kpg1,kpg2);
kpg3_16 kpg333(kpg2,kpg3);
kpg4_16 kpg444(kpg3,kpg4,s);
gkconv16 gkconv111(kpg4,vip);
xor3_16 xor111(a,b,vip,sum);
endd endd111(s,sc,carry);
endmodule