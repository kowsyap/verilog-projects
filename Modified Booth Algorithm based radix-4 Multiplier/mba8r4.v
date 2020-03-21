`include "r4.v"
`include "halfadder.v"
`include "fulladder.v"
module mba8r4(x,y,z);
input signed[7:0]x,y;
output signed[15:0]z;
wire signed[15:0]p1,p2,p3,p4;
wire [38:0]s,c;
r4 k0(x[1],x[0],1'b0,y,p1);
r4 kk(x[3],x[2],x[1],y,p2);
r4 l0(x[5],x[4],x[3],y,p3);
r4 i0(x[7],x[6],x[5],y,p4);
assign z[1:0]={p1[1],p1[0]};

halfadder xkl(p1[2],p2[0],s[0],c[0]);
halfadder xk1(p1[3],p2[1],s[1],c[1]);
fulladder xk2(p1[4],p2[2],p3[0],s[2],c[2]);
fulladder xk3(p1[5],p2[3],p3[1],s[3],c[3]);
fulladder xk4(p1[6],p2[4],p3[2],s[4],c[4]);
fulladder xk5(p1[7],p2[5],p3[3],s[5],c[5]);
fulladder xk6(p1[8],p2[6],p3[4],s[6],c[6]);
fulladder xk7(p1[9],p2[7],p3[5],s[7],c[7]);
fulladder xk8(p1[10],p2[8],p3[6],s[8],c[8]);
fulladder xk9(p1[11],p2[9],p3[7],s[9],c[9]);
fulladder xk10(p1[12],p2[10],p3[8],s[10],c[10]);
fulladder xk11(p1[13],p2[11],p3[9],s[11],c[11]);
fulladder xk12(p1[14],p2[12],p3[10],s[12],c[12]);
fulladder xk13(p1[15],p2[13],p3[11],s[13],c[13]);
assign z[2] = s[0];

halfadder xk14(s[1],c[0],s[14],c[14]);
halfadder xk15(s[2],c[1],s[15],c[15]);
halfadder xk16(s[3],c[2],s[16],c[16]);
fulladder xk17(s[4],c[3],p4[0],s[17],c[17]);
fulladder xk18(s[5],c[4],p4[1],s[18],c[18]);
fulladder xk19(s[6],c[5],p4[2],s[19],c[19]);
fulladder xk20(s[7],c[6],p4[3],s[20],c[20]);
fulladder xk21(s[8],c[7],p4[4],s[21],c[21]);
fulladder xk22(s[9],c[8],p4[5],s[22],c[22]);
fulladder xk23(s[10],c[9],p4[6],s[23],c[23]);
fulladder xk24(s[11],c[10],p4[7],s[24],c[24]);
fulladder xk25(s[12],c[11],p4[8],s[25],c[25]);
fulladder xk26(s[13],c[12],p4[9],s[26],c[26]);
assign z[3] = s[14];

halfadder xk27(s[15],c[14],s[27],c[27]);
fulladder xk28(s[16],c[15],c[27],s[28],c[28]);
fulladder xk29(s[17],c[16],c[28],s[29],c[29]);
fulladder xk30(s[18],c[17],c[29],s[30],c[30]);
fulladder xk31(s[19],c[18],c[30],s[31],c[31]);
fulladder xk32(s[20],c[19],c[31],s[32],c[32]);
fulladder xk33(s[21],c[20],c[32],s[33],c[33]);
fulladder xk34(s[22],c[21],c[33],s[34],c[34]);
fulladder xk35(s[23],c[22],c[34],s[35],c[35]);
fulladder xk36(s[24],c[23],c[35],s[36],c[36]);
fulladder xk37(s[25],c[24],c[36],s[37],c[37]);
fulladder xk38(s[26],c[25],c[37],s[38],c[38]);
assign z[15:4] = s[38:27];

endmodule