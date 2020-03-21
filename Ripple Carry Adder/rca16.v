`include "halfadder.v"
`include "fulladder.v"

module rca16(a,b,sum,carry);

input[15:0] a,b;
output[15:0] sum;
output carry;
wire[15:0] c;

halfadder ha0(a[0],b[0],sum[0],c[0]);
fulladder fa0(a[1],b[1],c[0],sum[1],c[1]);
fulladder fa1(a[2],b[2],c[1],sum[2],c[2]);
fulladder fa2(a[3],b[3],c[2],sum[3],c[3]);
fulladder fa3(a[4],b[4],c[3],sum[4],c[4]);
fulladder fa4(a[5],b[5],c[4],sum[5],c[5]);
fulladder fa5(a[6],b[6],c[5],sum[6],c[6]);
fulladder fa6(a[7],b[7],c[6],sum[7],c[7]);
fulladder fa7(a[8],b[8],c[7],sum[8],c[8]);
fulladder fa8(a[9],b[9],c[8],sum[9],c[9]);
fulladder fa9(a[10],b[10],c[9],sum[10],c[10]);
fulladder fa10(a[11],b[11],c[10],sum[11],c[11]);
fulladder fa11(a[12],b[12],c[11],sum[12],c[12]);
fulladder fa12(a[13],b[13],c[12],sum[13],c[13]);
fulladder fa13(a[14],b[14],c[13],sum[14],c[14]);
fulladder fa14(a[15],b[15],c[14],sum[15],c[15]);
assign carry = c[15];

endmodule