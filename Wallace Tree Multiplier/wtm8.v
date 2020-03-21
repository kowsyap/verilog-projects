`include "pp8.v"
`include "rd16.v"
`include "fulladder.v"
`include "halfadder.v"

module wtm8(a,b,mul);

input[7:0] a,b;
output[15:0] mul;
wire[7:0] p0,p1,p2,p3,p4,p5,p6,p7;
wire[7:0] e,e2,e4;
wire[9:0] s1,s2,e3,s4;
wire[10:0] s3,e5,e6;
wire[13:0] s5;
wire[14:0] s6;
wire[15:0] c,d;
pp8 pp0(a,b[0],p0);
pp8 pp1(a,b[1],p1);
pp8 pp2(a,b[2],p2);
pp8 pp3(a,b[3],p3);
pp8 pp4(a,b[4],p4);
pp8 pp5(a,b[5],p5);
pp8 pp6(a,b[6],p6);
pp8 pp7(a,b[7],p7);

//1st stage
//1
assign s1[0]=p0[0];
halfadder ha00(p0[1],p1[0],s1[1],e[0]);
fulladder fa11(p0[2],p1[1],p2[0],s1[2],e[1]);
fulladder fa22(p0[3],p1[2],p2[1],s1[3],e[2]);
fulladder fa33(p0[4],p1[3],p2[2],s1[4],e[3]);
fulladder fa44(p0[5],p1[4],p2[3],s1[5],e[4]);
fulladder fa55(p0[6],p1[5],p2[4],s1[6],e[5]);
fulladder fa66(p0[7],p1[6],p2[5],s1[7],e[6]);
halfadder ha77(p1[7],p2[6],s1[8],e[7]);
assign s1[9]=p2[7];
//2
assign s2[0]=p3[0];
halfadder ha100(p3[1],p4[0],s2[1],e2[0]);
fulladder fa111(p3[2],p4[1],p5[0],s2[2],e2[1]);
fulladder fa122(p3[3],p4[2],p5[1],s2[3],e2[2]);
fulladder fa133(p3[4],p4[3],p5[2],s2[4],e2[3]);
fulladder fa144(p3[5],p4[4],p5[3],s2[5],e2[4]);
fulladder fa155(p3[6],p4[5],p5[4],s2[6],e2[5]);
fulladder fa166(p3[7],p4[6],p5[5],s2[7],e2[6]);
halfadder ha177(p4[7],p5[6],s2[8],e2[7]);
assign s2[9]=p5[7];

//2nd stage
//3
assign s3[0]=s1[0];
assign s3[1]=s1[1];
halfadder ha7100(s1[2],e[0],s3[2],e3[0]);
fulladder fa1111(s1[3],e[1],s2[0],s3[3],e3[1]);
fulladder fa1122(s1[4],e[2],s2[1],s3[4],e3[2]);
fulladder fa1133(s1[5],e[3],s2[2],s3[5],e3[3]);
fulladder fa1144(s1[6],e[4],s2[3],s3[6],e3[4]);
fulladder fa1155(s1[7],e[5],s2[4],s3[7],e3[5]);
fulladder fa1166(s1[8],e[6],s2[5],s3[8],e3[6]);
fulladder fa1177(s1[9],e[7],s2[6],s3[9],e3[7]);
assign s3[10]=s2[7];
assign e3[8]=s2[8];
assign e3[9]=s2[9];
//4
assign s4[0]=e2[0];
halfadder ha11100(e2[1],p6[0],s4[1],e4[0]);
fulladder fa11111(e2[2],p6[1],p7[0],s4[2],e4[1]);
fulladder fa11122(e2[3],p6[2],p7[1],s4[3],e4[2]);
fulladder fa11133(e2[4],p6[3],p7[2],s4[4],e4[3]);
fulladder fa11144(e2[5],p6[4],p7[3],s4[5],e4[4]);
fulladder fa11155(e2[6],p6[5],p7[4],s4[6],e4[5]);
fulladder fa11166(e2[7],p6[6],p7[5],s4[7],e4[6]);
halfadder ha11177(p6[7],p7[6],s4[8],e4[7]);
assign s4[9]=p7[7];

//3rd stage
//5
assign s5[0]=s3[0];
assign s5[1]=s3[1];
assign s5[2]=s3[2];
halfadder ha1200(s3[3],e3[0],s5[3],e5[0]);
halfadder ha11211(s3[4],e3[1],s5[4],e5[1]);
fulladder fa11222(s3[5],e3[2],s4[0],s5[5],e5[2]);
fulladder fa11233(s3[6],e3[3],s4[1],s5[6],e5[3]);
fulladder fa11244(s3[7],e3[4],s4[2],s5[7],e5[4]);
fulladder fa11255(s3[8],e3[5],s4[3],s5[8],e5[5]);
fulladder fa11266(s3[9],e3[6],s4[4],s5[9],e5[6]);
fulladder fa11277(s3[10],e3[7],s4[5],s5[10],e5[7]);
halfadder ha12221(e3[8],s4[6],s5[11],e5[8]);
halfadder ha12231(e3[9],s4[7],s5[12],e5[9]);
assign s5[13]=s4[8];
assign e5[10]=s4[9];

//4th stage
//6
assign s6[0]=s5[0];
assign s6[1]=s5[1];
assign s6[2]=s5[2];
assign s6[3]=s5[3];
halfadder ha12341(s5[4],e5[0],s6[4],e6[0]);
halfadder ha12342(s5[5],e5[1],s6[5],e6[1]);
halfadder ha12343(s5[6],e5[2],s6[6],e6[2]);
fulladder fa61111(s5[7],e5[3],e4[0],s6[7],e6[3]);
fulladder fa61122(s5[8],e5[4],e4[1],s6[8],e6[4]);
fulladder fa61133(s5[9],e5[5],e4[2],s6[9],e6[5]);
fulladder fa61144(s5[10],e5[6],e4[3],s6[10],e6[6]);
fulladder fa61155(s5[11],e5[7],e4[4],s6[11],e6[7]);
fulladder fa68166(s5[12],e5[8],e4[5],s6[12],e6[8]);
fulladder fa61166(s5[13],e5[9],e4[6],s6[13],e6[9]);
halfadder ha122341(e5[10],e4[7],s6[14],e6[10]);

//5th stage
assign c[14:0]=s6;
assign c[15]=1'b0;
assign d[15:5]=e6;
assign d[4:0]=5'b00000;
rd16 rffrf(c,d,mul,f);

endmodule