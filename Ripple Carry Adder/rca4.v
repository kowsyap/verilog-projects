`include "halfadder.v"
`include "fulladder.v"

module rca4(a,b,sum,carry);

input[3:0] a,b;
output[3:0] sum;
output carry;
wire[3:0] c;

halfadder ha0(a[0],b[0],sum[0],c[0]);
fulladder fa0(a[1],b[1],c[0],sum[1],c[1]);
fulladder fa1(a[2],b[2],c[1],sum[2],c[2]);
fulladder fa2(a[3],b[3],c[2],sum[3],c[3]);

assign carry = c[3];

endmodule