`include "pp8.v"
`include "halfadder.v"
`include "fulladder.v"
`include "rd8.v"

module am8(a,b,mul);

input[7:0] a,b;
output[15:0] mul;
output[7:0] c,d;
wire[7:0] p0,p1,p2,p3,p4,p5,p6,p7,c,d,sum;
wire[6:0] s1,e,s2,e2,s3,e3,s4,e4,s5,s6,s7,e5,e6,e7;

pp8 pp0(a,b[0],p0);
pp8 pp1(a,b[1],p1);
pp8 pp2(a,b[2],p2);
pp8 pp3(a,b[3],p3);
pp8 pp4(a,b[4],p4);
pp8 pp5(a,b[5],p5);
pp8 pp6(a,b[6],p6);
pp8 pp7(a,b[7],p7);


halfadder ha01(p0[1],p1[0],s1[0],e[0]);
halfadder ha02(p0[2],p1[1],s1[1],e[1]);
halfadder ha03(p0[3],p1[2],s1[2],e[2]);
halfadder ha04(p0[4],p1[3],s1[3],e[3]);
halfadder ha05(p0[5],p1[4],s1[4],e[4]);
halfadder ha06(p0[6],p1[5],s1[5],e[5]);
halfadder ha07(p0[7],p1[6],s1[6],e[6]);

assign mul[0]=p0[0];
assign mul[1]=s1[0];

fulladder fa00(s1[1],e[0],p2[0],s2[0],e2[0]);
fulladder fa01(s1[2],e[1],p2[1],s2[1],e2[1]);
fulladder fa02(s1[3],e[2],p2[2],s2[2],e2[2]);
fulladder fa03(s1[4],e[3],p2[3],s2[3],e2[3]);
fulladder fa04(s1[5],e[4],p2[4],s2[4],e2[4]);
fulladder fa05(s1[6],e[5],p2[5],s2[5],e2[5]);
fulladder fa06(p1[7],e[6],p2[6],s2[6],e2[6]);

assign mul[2]=s2[0];

fulladder fa010(s2[1],e2[0],p3[0],s3[0],e3[0]);
fulladder fa011(s2[2],e2[1],p3[1],s3[1],e3[1]);
fulladder fa012(s2[3],e2[2],p3[2],s3[2],e3[2]);
fulladder fa013(s2[4],e2[3],p3[3],s3[3],e3[3]);
fulladder fa014(s2[5],e2[4],p3[4],s3[4],e3[4]);
fulladder fa015(s2[6],e2[5],p3[5],s3[5],e3[5]);
fulladder fa016(p2[7],e2[6],p3[6],s3[6],e3[6]);

assign mul[3]=s3[0];

fulladder fa020(s3[1],e3[0],p4[0],s4[0],e4[0]);
fulladder fa021(s3[2],e3[1],p4[1],s4[1],e4[1]);
fulladder fa022(s3[3],e3[2],p4[2],s4[2],e4[2]);
fulladder fa023(s3[4],e3[3],p4[3],s4[3],e4[3]);
fulladder fa024(s3[5],e3[4],p4[4],s4[4],e4[4]);
fulladder fa025(s3[6],e3[5],p4[5],s4[5],e4[5]);
fulladder fa026(p3[7],e3[6],p4[6],s4[6],e4[6]);

assign mul[4]=s4[0];

fulladder fa030(s4[1],e4[0],p5[0],s5[0],e5[0]);
fulladder fa031(s4[2],e4[1],p5[1],s5[1],e5[1]);
fulladder fa032(s4[3],e4[2],p5[2],s5[2],e5[2]);
fulladder fa033(s4[4],e4[3],p5[3],s5[3],e5[3]);
fulladder fa034(s4[5],e4[4],p5[4],s5[4],e5[4]);
fulladder fa035(s4[6],e4[5],p5[5],s5[5],e5[5]);
fulladder fa036(p4[7],e4[6],p5[6],s5[6],e5[6]);

assign mul[5]=s5[0];

fulladder fa040(s5[1],e5[0],p6[0],s6[0],e6[0]);
fulladder fa041(s5[2],e5[1],p6[1],s6[1],e6[1]);
fulladder fa042(s5[3],e5[2],p6[2],s6[2],e6[2]);
fulladder fa043(s5[4],e5[3],p6[3],s6[3],e6[3]);
fulladder fa044(s5[5],e5[4],p6[4],s6[4],e6[4]);
fulladder fa045(s5[6],e5[5],p6[5],s6[5],e6[5]);
fulladder fa046(p5[7],e5[6],p6[6],s6[6],e6[6]);

assign mul[6]=s6[0];

fulladder fa050(s6[1],e6[0],p7[0],s7[0],e7[0]);
fulladder fa051(s6[2],e6[1],p7[1],s7[1],e7[1]);
fulladder fa052(s6[3],e6[2],p7[2],s7[2],e7[2]);
fulladder fa053(s6[4],e6[3],p7[3],s7[3],e7[3]);
fulladder fa054(s6[5],e6[4],p7[4],s7[4],e7[4]);
fulladder fa055(s6[6],e6[5],p7[5],s7[5],e7[5]);
fulladder fa056(p6[7],e6[6],p7[6],s7[6],e7[6]);

assign mul[7]=s7[0];
assign c[5:0] = s7[6:1];
assign c[6]=p7[7];
assign c[7]=1'b0;
assign d[6:0] = e7;
assign d[7] = 1'b0;

rd8 rrr(c,d,sum,f);

assign mul[15:8]=sum;

endmodule