`include "pp24.v"
`include "halfadder.v"
`include "fulladder.v"
`include "rca24.v"

module am24(a,b,mul);

input[23:0] a,b;
output[47:0] mul;

wire[23:0] p0,p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,c,d,sum;
wire[22:0] s1,e,s2,e2,s3,e3,s4,e4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,s16,s17,s18,s19,s20,s21,s22,s23,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19,e20,e21,e22,e23;

//partial products
pp24 pp0(a,b[0],p0);
pp24 pp1(a,b[1],p1);
pp24 pp2(a,b[2],p2);
pp24 pp3(a,b[3],p3);
pp24 pp4(a,b[4],p4);
pp24 pp5(a,b[5],p5);
pp24 pp6(a,b[6],p6);
pp24 pp7(a,b[7],p7);
pp24 pp8(a,b[8],p8);
pp24 pp9(a,b[9],p9);
pp24 pp10(a,b[10],p10);
pp24 pp11(a,b[11],p11);
pp24 pp12(a,b[12],p12);
pp24 pp13(a,b[13],p13);
pp24 pp14(a,b[14],p14);
pp24 pp15(a,b[15],p15);
pp24 pp16(a,b[16],p16);
pp24 pp17(a,b[17],p17);
pp24 pp18(a,b[18],p18);
pp24 pp19(a,b[19],p19);
pp24 pp20(a,b[20],p20);
pp24 pp21(a,b[21],p21);
pp24 pp22(a,b[22],p22);
pp24 pp23(a,b[23],p23);

halfadder ha01(p0[1],p1[0],s1[0],e[0]);
halfadder ha02(p0[2],p1[1],s1[1],e[1]);
halfadder ha03(p0[3],p1[2],s1[2],e[2]);
halfadder ha04(p0[4],p1[3],s1[3],e[3]);
halfadder ha05(p0[5],p1[4],s1[4],e[4]);
halfadder ha06(p0[6],p1[5],s1[5],e[5]);
halfadder ha07(p0[7],p1[6],s1[6],e[6]);
halfadder ha08(p0[8],p1[7],s1[7],e[7]);
halfadder ha09(p0[9],p1[8],s1[8],e[8]);
halfadder ha010(p0[10],p1[9],s1[9],e[9]);
halfadder ha011(p0[11],p1[10],s1[10],e[10]);
halfadder ha012(p0[12],p1[11],s1[11],e[11]);
halfadder ha013(p0[13],p1[12],s1[12],e[12]);
halfadder ha014(p0[14],p1[13],s1[13],e[13]);
halfadder ha015(p0[15],p1[14],s1[14],e[14]);
halfadder ha016(p0[16],p1[15],s1[15],e[15]);
halfadder ha017(p0[17],p1[16],s1[16],e[16]);
halfadder ha018(p0[18],p1[17],s1[17],e[17]);
halfadder ha019(p0[19],p1[18],s1[18],e[18]);
halfadder ha020(p0[20],p1[19],s1[19],e[19]);
halfadder ha021(p0[21],p1[20],s1[20],e[20]);
halfadder ha022(p0[22],p1[21],s1[21],e[21]);
halfadder ha023(p0[23],p1[22],s1[22],e[22]);

assign mul[0]=p0[0];
assign mul[1]=s1[0];

fulladder fa00(s1[1],e[0],p2[0],s2[0],e2[0]);
fulladder fa01(s1[2],e[1],p2[1],s2[1],e2[1]);
fulladder fa02(s1[3],e[2],p2[2],s2[2],e2[2]);
fulladder fa03(s1[4],e[3],p2[3],s2[3],e2[3]);
fulladder fa04(s1[5],e[4],p2[4],s2[4],e2[4]);
fulladder fa05(s1[6],e[5],p2[5],s2[5],e2[5]);
fulladder fa06(s1[7],e[6],p2[6],s2[6],e2[6]);
fulladder fa07(s1[8],e[7],p2[7],s2[7],e2[7]);
fulladder fa08(s1[9],e[8],p2[8],s2[8],e2[8]);
fulladder fa09(s1[10],e[9],p2[9],s2[9],e2[9]);
fulladder fa0010(s1[11],e[10],p2[10],s2[10],e2[10]);
fulladder fa0101(s1[12],e[11],p2[11],s2[11],e2[11]);
fulladder fa0120(s1[13],e[12],p2[12],s2[12],e2[12]);
fulladder fa0131(s1[14],e[13],p2[13],s2[13],e2[13]);
fulladder fa0141(s1[15],e[14],p2[14],s2[14],e2[14]);
fulladder fa0151(s1[16],e[15],p2[15],s2[15],e2[15]);
fulladder fa0161(s1[17],e[16],p2[16],s2[16],e2[16]);
fulladder fa0171(s1[18],e[17],p2[17],s2[17],e2[17]);
fulladder fa0181(s1[19],e[18],p2[18],s2[18],e2[18]);
fulladder fa0191(s1[20],e[19],p2[19],s2[19],e2[19]);
fulladder fa0201(s1[21],e[20],p2[20],s2[20],e2[20]);
fulladder fa0211(s1[22],e[21],p2[21],s2[21],e2[21]);
fulladder fa0221(p1[23],e[22],p2[22],s2[22],e2[22]);

assign mul[2]=s2[0];

fulladder fa010(s2[1],e2[0],p3[0],s3[0],e3[0]);
fulladder fa011(s2[2],e2[1],p3[1],s3[1],e3[1]);
fulladder fa012(s2[3],e2[2],p3[2],s3[2],e3[2]);
fulladder fa013(s2[4],e2[3],p3[3],s3[3],e3[3]);
fulladder fa014(s2[5],e2[4],p3[4],s3[4],e3[4]);
fulladder fa015(s2[6],e2[5],p3[5],s3[5],e3[5]);
fulladder fa016(s2[7],e2[6],p3[6],s3[6],e3[6]);
fulladder fa017(s2[8],e2[7],p3[7],s3[7],e3[7]);
fulladder fa018(s2[9],e2[8],p3[8],s3[8],e3[8]);
fulladder fa019(s2[10],e2[9],p3[9],s3[9],e3[9]);
fulladder fa0110(s2[11],e2[10],p3[10],s3[10],e3[10]);
fulladder fa0111(s2[12],e2[11],p3[11],s3[11],e3[11]);
fulladder fa0112(s2[13],e2[12],p3[12],s3[12],e3[12]);
fulladder fa0113(s2[14],e2[13],p3[13],s3[13],e3[13]);
fulladder fa0114(s2[15],e2[14],p3[14],s3[14],e3[14]);
fulladder fa0115(s2[16],e2[15],p3[15],s3[15],e3[15]);
fulladder fa0116(s2[17],e2[16],p3[16],s3[16],e3[16]);
fulladder fa0117(s2[18],e2[17],p3[17],s3[17],e3[17]);
fulladder fa0118(s2[19],e2[18],p3[18],s3[18],e3[18]);
fulladder fa0119(s2[20],e2[19],p3[19],s3[19],e3[19]);
fulladder fa10120(s2[21],e2[20],p3[20],s3[20],e3[20]);
fulladder fa0121(s2[22],e2[21],p3[21],s3[21],e3[21]);
fulladder fa0122(p2[23],e2[22],p3[22],s3[22],e3[22]);


assign mul[3]=s3[0];

fulladder fa020(s3[1],e3[0],p4[0],s4[0],e4[0]);
fulladder fa021(s3[2],e3[1],p4[1],s4[1],e4[1]);
fulladder fa022(s3[3],e3[2],p4[2],s4[2],e4[2]);
fulladder fa023(s3[4],e3[3],p4[3],s4[3],e4[3]);
fulladder fa024(s3[5],e3[4],p4[4],s4[4],e4[4]);
fulladder fa025(s3[6],e3[5],p4[5],s4[5],e4[5]);
fulladder fa026(s3[7],e3[6],p4[6],s4[6],e4[6]);
fulladder fa027(s3[8],e3[7],p4[7],s4[7],e4[7]);
fulladder fa028(s3[9],e3[8],p4[8],s4[8],e4[8]);
fulladder fa029(s3[10],e3[9],p4[9],s4[9],e4[9]);
fulladder fa0210(s3[11],e3[10],p4[10],s4[10],e4[10]);
fulladder fa10211(s3[12],e3[11],p4[11],s4[11],e4[11]);
fulladder fa0212(s3[13],e3[12],p4[12],s4[12],e4[12]);
fulladder fa0213(s3[14],e3[13],p4[13],s4[13],e4[13]);
fulladder fa0214(s3[15],e3[14],p4[14],s4[14],e4[14]);
fulladder fa0215(s3[16],e3[15],p4[15],s4[15],e4[15]);
fulladder fa0216(s3[17],e3[16],p4[16],s4[16],e4[16]);
fulladder fa0217(s3[18],e3[17],p4[17],s4[17],e4[17]);
fulladder fa0218(s3[19],e3[18],p4[18],s4[18],e4[18]);
fulladder fa0219(s3[20],e3[19],p4[19],s4[19],e4[19]);
fulladder fa0220(s3[21],e3[20],p4[20],s4[20],e4[20]);
fulladder fa10221(s3[22],e3[21],p4[21],s4[21],e4[21]);
fulladder fa0222(p3[23],e3[22],p4[22],s4[22],e4[22]);

assign mul[4]=s4[0];

fulladder fa030(s4[1],e4[0],p5[0],s5[0],e5[0]);
fulladder fa031(s4[2],e4[1],p5[1],s5[1],e5[1]);
fulladder fa032(s4[3],e4[2],p5[2],s5[2],e5[2]);
fulladder fa033(s4[4],e4[3],p5[3],s5[3],e5[3]);
fulladder fa034(s4[5],e4[4],p5[4],s5[4],e5[4]);
fulladder fa035(s4[6],e4[5],p5[5],s5[5],e5[5]);
fulladder fa036(s4[7],e4[6],p5[6],s5[6],e5[6]);
fulladder fa037(s4[8],e4[7],p5[7],s5[7],e5[7]);
fulladder fa038(s4[9],e4[8],p5[8],s5[8],e5[8]);
fulladder fa039(s4[10],e4[9],p5[9],s5[9],e5[9]);
fulladder fa0310(s4[11],e4[10],p5[10],s5[10],e5[10]);
fulladder fa0311(s4[12],e4[11],p5[11],s5[11],e5[11]);
fulladder fa0312(s4[13],e4[12],p5[12],s5[12],e5[12]);
fulladder fa0313(s4[14],e4[13],p5[13],s5[13],e5[13]);
fulladder fa0314(s4[15],e4[14],p5[14],s5[14],e5[14]);
fulladder fa0315(s4[16],e4[15],p5[15],s5[15],e5[15]);
fulladder fa0316(s4[17],e4[16],p5[16],s5[16],e5[16]);
fulladder fa0317(s4[18],e4[17],p5[17],s5[17],e5[17]);
fulladder fa0318(s4[19],e4[18],p5[18],s5[18],e5[18]);
fulladder fa0319(s4[20],e4[19],p5[19],s5[19],e5[19]);
fulladder fa0320(s4[21],e4[20],p5[20],s5[20],e5[20]);
fulladder fa0321(s4[22],e4[21],p5[21],s5[21],e5[21]);
fulladder fa0322(p4[23],e4[22],p5[22],s5[22],e5[22]);


assign mul[5]=s5[0];

fulladder fa040(s5[1],e5[0],p6[0],s6[0],e6[0]);
fulladder fa041(s5[2],e5[1],p6[1],s6[1],e6[1]);
fulladder fa042(s5[3],e5[2],p6[2],s6[2],e6[2]);
fulladder fa043(s5[4],e5[3],p6[3],s6[3],e6[3]);
fulladder fa044(s5[5],e5[4],p6[4],s6[4],e6[4]);
fulladder fa045(s5[6],e5[5],p6[5],s6[5],e6[5]);
fulladder fa046(s5[7],e5[6],p6[6],s6[6],e6[6]);
fulladder fa047(s5[8],e5[7],p6[7],s6[7],e6[7]);
fulladder fa048(s5[9],e5[8],p6[8],s6[8],e6[8]);
fulladder fa049(s5[10],e5[9],p6[9],s6[9],e6[9]);
fulladder fa0410(s5[11],e5[10],p6[10],s6[10],e6[10]);
fulladder fa0411(s5[12],e5[11],p6[11],s6[11],e6[11]);
fulladder fa0412(s5[13],e5[12],p6[12],s6[12],e6[12]);
fulladder fa0413(s5[14],e5[13],p6[13],s6[13],e6[13]);
fulladder fa0414(s5[15],e5[14],p6[14],s6[14],e6[14]);
fulladder fa0415(s5[16],e5[15],p6[15],s6[15],e6[15]);
fulladder fa0416(s5[17],e5[16],p6[16],s6[16],e6[16]);
fulladder fa0417(s5[18],e5[17],p6[17],s6[17],e6[17]);
fulladder fa0418(s5[19],e5[18],p6[18],s6[18],e6[18]);
fulladder fa0419(s5[20],e5[19],p6[19],s6[19],e6[19]);
fulladder fa0420(s5[21],e5[20],p6[20],s6[20],e6[20]);
fulladder fa0421(s5[22],e5[21],p6[21],s6[21],e6[21]);
fulladder fa0422(p5[23],e5[22],p6[22],s6[22],e6[22]);

assign mul[6]=s6[0];

fulladder fa050(s6[1],e6[0],p7[0],s7[0],e7[0]);
fulladder fa051(s6[2],e6[1],p7[1],s7[1],e7[1]);
fulladder fa052(s6[3],e6[2],p7[2],s7[2],e7[2]);
fulladder fa053(s6[4],e6[3],p7[3],s7[3],e7[3]);
fulladder fa054(s6[5],e6[4],p7[4],s7[4],e7[4]);
fulladder fa055(s6[6],e6[5],p7[5],s7[5],e7[5]);
fulladder fa056(s6[7],e6[6],p7[6],s7[6],e7[6]);
fulladder fa057(s6[8],e6[7],p7[7],s7[7],e7[7]);
fulladder fa058(s6[9],e6[8],p7[8],s7[8],e7[8]);
fulladder fa059(s6[10],e6[9],p7[9],s7[9],e7[9]);
fulladder fa0510(s6[11],e6[10],p7[10],s7[10],e7[10]);
fulladder fa0511(s6[12],e6[11],p7[11],s7[11],e7[11]);
fulladder fa0512(s6[13],e6[12],p7[12],s7[12],e7[12]);
fulladder fa0513(s6[14],e6[13],p7[13],s7[13],e7[13]);
fulladder fa0514(s6[15],e6[14],p7[14],s7[14],e7[14]);
fulladder fa0515(s6[16],e6[15],p7[15],s7[15],e7[15]);
fulladder fa0516(s6[17],e6[16],p7[16],s7[16],e7[16]);
fulladder fa0517(s6[18],e6[17],p7[17],s7[17],e7[17]);
fulladder fa0518(s6[19],e6[18],p7[18],s7[18],e7[18]);
fulladder fa0519(s6[20],e6[19],p7[19],s7[19],e7[19]);
fulladder fa0520(s6[21],e6[20],p7[20],s7[20],e7[20]);
fulladder fa0521(s6[22],e6[21],p7[21],s7[21],e7[21]);
fulladder fa0522(p6[23],e6[22],p7[22],s7[22],e7[22]);

assign mul[7]=s7[0];


fulladder fa060(s7[1],e7[0],p8[0],s8[0],e8[0]);
fulladder fa061(s7[2],e7[1],p8[1],s8[1],e8[1]);
fulladder fa062(s7[3],e7[2],p8[2],s8[2],e8[2]);
fulladder fa063(s7[4],e7[3],p8[3],s8[3],e8[3]);
fulladder fa064(s7[5],e7[4],p8[4],s8[4],e8[4]);
fulladder fa065(s7[6],e7[5],p8[5],s8[5],e8[5]);
fulladder fa066(s7[7],e7[6],p8[6],s8[6],e8[6]);
fulladder fa067(s7[8],e7[7],p8[7],s8[7],e8[7]);
fulladder fa068(s7[9],e7[8],p8[8],s8[8],e8[8]);
fulladder fa069(s7[10],e7[9],p8[9],s8[9],e8[9]);
fulladder fa0610(s7[11],e7[10],p8[10],s8[10],e8[10]);
fulladder fa0611(s7[12],e7[11],p8[11],s8[11],e8[11]);
fulladder fa0612(s7[13],e7[12],p8[12],s8[12],e8[12]);
fulladder fa0613(s7[14],e7[13],p8[13],s8[13],e8[13]);
fulladder fa0614(s7[15],e7[14],p8[14],s8[14],e8[14]);
fulladder fa0615(s7[16],e7[15],p8[15],s8[15],e8[15]);
fulladder fa0616(s7[17],e7[16],p8[16],s8[16],e8[16]);
fulladder fa0617(s7[18],e7[17],p8[17],s8[17],e8[17]);
fulladder fa0618(s7[19],e7[18],p8[18],s8[18],e8[18]);
fulladder fa0619(s7[20],e7[19],p8[19],s8[19],e8[19]);
fulladder fa0620(s7[21],e7[20],p8[20],s8[20],e8[20]);
fulladder fa0621(s7[22],e7[21],p8[21],s8[21],e8[21]);
fulladder fa0622(p7[23],e7[22],p8[22],s8[22],e8[22]);

assign mul[8]=s8[0];


fulladder fa070(s8[1],e8[0],p9[0],s9[0],e9[0]);
fulladder fa071(s8[2],e8[1],p9[1],s9[1],e9[1]);
fulladder fa072(s8[3],e8[2],p9[2],s9[2],e9[2]);
fulladder fa073(s8[4],e8[3],p9[3],s9[3],e9[3]);
fulladder fa074(s8[5],e8[4],p9[4],s9[4],e9[4]);
fulladder fa075(s8[6],e8[5],p9[5],s9[5],e9[5]);
fulladder fa076(s8[7],e8[6],p9[6],s9[6],e9[6]);
fulladder fa077(s8[8],e8[7],p9[7],s9[7],e9[7]);
fulladder fa078(s8[9],e8[8],p9[8],s9[8],e9[8]);
fulladder fa079(s8[10],e8[9],p9[9],s9[9],e9[9]);
fulladder fa0710(s8[11],e8[10],p9[10],s9[10],e9[10]);
fulladder fa0711(s8[12],e8[11],p9[11],s9[11],e9[11]);
fulladder fa0712(s8[13],e8[12],p9[12],s9[12],e9[12]);
fulladder fa0713(s8[14],e8[13],p9[13],s9[13],e9[13]);
fulladder fa0714(s8[15],e8[14],p9[14],s9[14],e9[14]);
fulladder fa0715(s8[16],e8[15],p9[15],s9[15],e9[15]);
fulladder fa0716(s8[17],e8[16],p9[16],s9[16],e9[16]);
fulladder fa0717(s8[18],e8[17],p9[17],s9[17],e9[17]);
fulladder fa0718(s8[19],e8[18],p9[18],s9[18],e9[18]);
fulladder fa0719(s8[20],e8[19],p9[19],s9[19],e9[19]);
fulladder fa0720(s8[21],e8[20],p9[20],s9[20],e9[20]);
fulladder fa0721(s8[22],e8[21],p9[21],s9[21],e9[21]);
fulladder fa0722(p8[23],e8[22],p9[22],s9[22],e9[22]);

assign mul[9]=s9[0];


fulladder fa080(s9[1],e9[0],p10[0],s10[0],e10[0]);
fulladder fa081(s9[2],e9[1],p10[1],s10[1],e10[1]);
fulladder fa082(s9[3],e9[2],p10[2],s10[2],e10[2]);
fulladder fa083(s9[4],e9[3],p10[3],s10[3],e10[3]);
fulladder fa084(s9[5],e9[4],p10[4],s10[4],e10[4]);
fulladder fa085(s9[6],e9[5],p10[5],s10[5],e10[5]);
fulladder fa086(s9[7],e9[6],p10[6],s10[6],e10[6]);
fulladder fa087(s9[8],e9[7],p10[7],s10[7],e10[7]);
fulladder fa088(s9[9],e9[8],p10[8],s10[8],e10[8]);
fulladder fa089(s9[10],e9[9],p10[9],s10[9],e10[9]);
fulladder fa0810(s9[11],e9[10],p10[10],s10[10],e10[10]);
fulladder fa0811(s9[12],e9[11],p10[11],s10[11],e10[11]);
fulladder fa0812(s9[13],e9[12],p10[12],s10[12],e10[12]);
fulladder fa0813(s9[14],e9[13],p10[13],s10[13],e10[13]);
fulladder fa0814(s9[15],e9[14],p10[14],s10[14],e10[14]);
fulladder fa0815(s9[16],e9[15],p10[15],s10[15],e10[15]);
fulladder fa0816(s9[17],e9[16],p10[16],s10[16],e10[16]);
fulladder fa0817(s9[18],e9[17],p10[17],s10[17],e10[17]);
fulladder fa0818(s9[19],e9[18],p10[18],s10[18],e10[18]);
fulladder fa0819(s9[20],e9[19],p10[19],s10[19],e10[19]);
fulladder fa0820(s9[21],e9[20],p10[20],s10[20],e10[20]);
fulladder fa0821(s9[22],e9[21],p10[21],s10[21],e10[21]);
fulladder fa0822(p9[23],e9[22],p10[22],s10[22],e10[22]);

assign mul[10]=s10[0];

fulladder fa090(s10[1],e10[0],p11[0],s11[0],e11[0]);
fulladder fa091(s10[2],e10[1],p11[1],s11[1],e11[1]);
fulladder fa092(s10[3],e10[2],p11[2],s11[2],e11[2]);
fulladder fa093(s10[4],e10[3],p11[3],s11[3],e11[3]);
fulladder fa094(s10[5],e10[4],p11[4],s11[4],e11[4]);
fulladder fa095(s10[6],e10[5],p11[5],s11[5],e11[5]);
fulladder fa096(s10[7],e10[6],p11[6],s11[6],e11[6]);
fulladder fa097(s10[8],e10[7],p11[7],s11[7],e11[7]);
fulladder fa098(s10[9],e10[8],p11[8],s11[8],e11[8]);
fulladder fa099(s10[10],e10[9],p11[9],s11[9],e11[9]);
fulladder fa0910(s10[11],e10[10],p11[10],s11[10],e11[10]);
fulladder fa0911(s10[12],e10[11],p11[11],s11[11],e11[11]);
fulladder fa0912(s10[13],e10[12],p11[12],s11[12],e11[12]);
fulladder fa0913(s10[14],e10[13],p11[13],s11[13],e11[13]);
fulladder fa0914(s10[15],e10[14],p11[14],s11[14],e11[14]);
fulladder fa0915(s10[16],e10[15],p11[15],s11[15],e11[15]);
fulladder fa0916(s10[17],e10[16],p11[16],s11[16],e11[16]);
fulladder fa0917(s10[18],e10[17],p11[17],s11[17],e11[17]);
fulladder fa0918(s10[19],e10[18],p11[18],s11[18],e11[18]);
fulladder fa0919(s10[20],e10[19],p11[19],s11[19],e11[19]);
fulladder fa0920(s10[21],e10[20],p11[20],s11[20],e11[20]);
fulladder fa0921(s10[22],e10[21],p11[21],s11[21],e11[21]);
fulladder fa0922(p10[23],e10[22],p11[22],s11[22],e11[22]);

assign mul[11]=s11[0];

fulladder fa0100(s11[1],e11[0],p12[0],s12[0],e12[0]);
fulladder fa01a01(s11[2],e11[1],p12[1],s12[1],e12[1]);
fulladder fa0102(s11[3],e11[2],p12[2],s12[2],e12[2]);
fulladder fa0103(s11[4],e11[3],p12[3],s12[3],e12[3]);
fulladder fa0104(s11[5],e11[4],p12[4],s12[4],e12[4]);
fulladder fa0105(s11[6],e11[5],p12[5],s12[5],e12[5]);
fulladder fa0106(s11[7],e11[6],p12[6],s12[6],e12[6]);
fulladder fa0107(s11[8],e11[7],p12[7],s12[7],e12[7]);
fulladder fa0108(s11[9],e11[8],p12[8],s12[8],e12[8]);
fulladder fa0109(s11[10],e11[9],p12[9],s12[9],e12[9]);
fulladder fa01010(s11[11],e11[10],p12[10],s12[10],e12[10]);
fulladder fa01011(s11[12],e11[11],p12[11],s12[11],e12[11]);
fulladder fa01012(s11[13],e11[12],p12[12],s12[12],e12[12]);
fulladder fa01013(s11[14],e11[13],p12[13],s12[13],e12[13]);
fulladder fa01014(s11[15],e11[14],p12[14],s12[14],e12[14]);
fulladder fa01015(s11[16],e11[15],p12[15],s12[15],e12[15]);
fulladder fa01016(s11[17],e11[16],p12[16],s12[16],e12[16]);
fulladder fa01017(s11[18],e11[17],p12[17],s12[17],e12[17]);
fulladder fa01018(s11[19],e11[18],p12[18],s12[18],e12[18]);
fulladder fa01019(s11[20],e11[19],p12[19],s12[19],e12[19]);
fulladder fa01020(s11[21],e11[20],p12[20],s12[20],e12[20]);
fulladder fa01021(s11[22],e11[21],p12[21],s12[21],e12[21]);
fulladder fa01022(p11[23],e11[22],p12[22],s12[22],e12[22]);

assign mul[12]=s12[0];

fulladder fa01a10(s12[1],e12[0],p13[0],s13[0],e13[0]);
fulladder fa01a11(s12[2],e12[1],p13[1],s13[1],e13[1]);
fulladder fa01a12(s12[3],e12[2],p13[2],s13[2],e13[2]);
fulladder fa01a13(s12[4],e12[3],p13[3],s13[3],e13[3]);
fulladder fa011a4(s12[5],e12[4],p13[4],s13[4],e13[4]);
fulladder fa0115a(s12[6],e12[5],p13[5],s13[5],e13[5]);
fulladder fa0116a(s12[7],e12[6],p13[6],s13[6],e13[6]);
fulladder fa011a7(s12[8],e12[7],p13[7],s13[7],e13[7]);
fulladder fa01a18(s12[9],e12[8],p13[8],s13[8],e13[8]);
fulladder fa0a119(s12[10],e12[9],p13[9],s13[9],e13[9]);
fulladder fa01110(s12[11],e12[10],p13[10],s13[10],e13[10]);
fulladder fa01111(s12[12],e12[11],p13[11],s13[11],e13[11]);
fulladder fa01112(s12[13],e12[12],p13[12],s13[12],e13[12]);
fulladder fa01113(s12[14],e12[13],p13[13],s13[13],e13[13]);
fulladder fa01114(s12[15],e12[14],p13[14],s13[14],e13[14]);
fulladder fa01115(s12[16],e12[15],p13[15],s13[15],e13[15]);
fulladder fa01116(s12[17],e12[16],p13[16],s13[16],e13[16]);
fulladder fa01117(s12[18],e12[17],p13[17],s13[17],e13[17]);
fulladder fa01118(s12[19],e12[18],p13[18],s13[18],e13[18]);
fulladder fa01119(s12[20],e12[19],p13[19],s13[19],e13[19]);
fulladder fa01120(s12[21],e12[20],p13[20],s13[20],e13[20]);
fulladder fa01121(s12[22],e12[21],p13[21],s13[21],e13[21]);
fulladder fa01122(p12[23],e12[22],p13[22],s13[22],e13[22]);

assign mul[13]=s13[0];

fulladder fa01a20(s13[1],e13[0],p14[0],s14[0],e14[0]);
fulladder fa01a21(s13[2],e13[1],p14[1],s14[1],e14[1]);
fulladder fa01a22(s13[3],e13[2],p14[2],s14[2],e14[2]);
fulladder fa0123(s13[4],e13[3],p14[3],s14[3],e14[3]);
fulladder fa0124(s13[5],e13[4],p14[4],s14[4],e14[4]);
fulladder fa0125(s13[6],e13[5],p14[5],s14[5],e14[5]);
fulladder fa0126(s13[7],e13[6],p14[6],s14[6],e14[6]);
fulladder fa0127(s13[8],e13[7],p14[7],s14[7],e14[7]);
fulladder fa0128(s13[9],e13[8],p14[8],s14[8],e14[8]);
fulladder fa0129(s13[10],e13[9],p14[9],s14[9],e14[9]);
fulladder fa01210(s13[11],e13[10],p14[10],s14[10],e14[10]);
fulladder fa01211(s13[12],e13[11],p14[11],s14[11],e14[11]);
fulladder fa01212(s13[13],e13[12],p14[12],s14[12],e14[12]);
fulladder fa01213(s13[14],e13[13],p14[13],s14[13],e14[13]);
fulladder fa01214(s13[15],e13[14],p14[14],s14[14],e14[14]);
fulladder fa01215(s13[16],e13[15],p14[15],s14[15],e14[15]);
fulladder fa01216(s13[17],e13[16],p14[16],s14[16],e14[16]);
fulladder fa01217(s13[18],e13[17],p14[17],s14[17],e14[17]);
fulladder fa01218(s13[19],e13[18],p14[18],s14[18],e14[18]);
fulladder fa01219(s13[20],e13[19],p14[19],s14[19],e14[19]);
fulladder fa01220(s13[21],e13[20],p14[20],s14[20],e14[20]);
fulladder fa01221(s13[22],e13[21],p14[21],s14[21],e14[21]);
fulladder fa01222(p13[23],e13[22],p14[22],s14[22],e14[22]);

assign mul[14]=s14[0];

fulladder fa0130(s14[1],e14[0],p15[0],s15[0],e15[0]);
fulladder fa0131a(s14[2],e14[1],p15[1],s15[1],e15[1]);
fulladder fa0132(s14[3],e14[2],p15[2],s15[2],e15[2]);
fulladder fa0133(s14[4],e14[3],p15[3],s15[3],e15[3]);
fulladder fa0134(s14[5],e14[4],p15[4],s15[4],e15[4]);
fulladder fa0135(s14[6],e14[5],p15[5],s15[5],e15[5]);
fulladder fa0136(s14[7],e14[6],p15[6],s15[6],e15[6]);
fulladder fa0137(s14[8],e14[7],p15[7],s15[7],e15[7]);
fulladder fa0138(s14[9],e14[8],p15[8],s15[8],e15[8]);
fulladder fa0139(s14[10],e14[9],p15[9],s15[9],e15[9]);
fulladder fa01310(s14[11],e14[10],p15[10],s15[10],e15[10]);
fulladder fa01311(s14[12],e14[11],p15[11],s15[11],e15[11]);
fulladder fa01312(s14[13],e14[12],p15[12],s15[12],e15[12]);
fulladder fa01313(s14[14],e14[13],p15[13],s15[13],e15[13]);
fulladder fa01314(s14[15],e14[14],p15[14],s15[14],e15[14]);
fulladder fa01315(s14[16],e14[15],p15[15],s15[15],e15[15]);
fulladder fa01316(s14[17],e14[16],p15[16],s15[16],e15[16]);
fulladder fa01317(s14[18],e14[17],p15[17],s15[17],e15[17]);
fulladder fa01318(s14[19],e14[18],p15[18],s15[18],e15[18]);
fulladder fa01319(s14[20],e14[19],p15[19],s15[19],e15[19]);
fulladder fa01320(s14[21],e14[20],p15[20],s15[20],e15[20]);
fulladder fa01321(s14[22],e14[21],p15[21],s15[21],e15[21]);
fulladder fa01322(p14[23],e14[22],p15[22],s15[22],e15[22]);

assign mul[15]=s15[0];

fulladder fa0140(s15[1],e15[0],p16[0],s16[0],e16[0]);
fulladder fa014a1(s15[2],e15[1],p16[1],s16[1],e16[1]);
fulladder fa0142(s15[3],e15[2],p16[2],s16[2],e16[2]);
fulladder fa0143(s15[4],e15[3],p16[3],s16[3],e16[3]);
fulladder fa0144(s15[5],e15[4],p16[4],s16[4],e16[4]);
fulladder fa0145(s15[6],e15[5],p16[5],s16[5],e16[5]);
fulladder fa0146(s15[7],e15[6],p16[6],s16[6],e16[6]);
fulladder fa0147(s15[8],e15[7],p16[7],s16[7],e16[7]);
fulladder fa0148(s15[9],e15[8],p16[8],s16[8],e16[8]);
fulladder fa0149(s15[10],e15[9],p16[9],s16[9],e16[9]);
fulladder fa01410(s15[11],e15[10],p16[10],s16[10],e16[10]);
fulladder fa01411(s15[12],e15[11],p16[11],s16[11],e16[11]);
fulladder fa01412(s15[13],e15[12],p16[12],s16[12],e16[12]);
fulladder fa01413(s15[14],e15[13],p16[13],s16[13],e16[13]);
fulladder fa01414(s15[15],e15[14],p16[14],s16[14],e16[14]);
fulladder fa01415(s15[16],e15[15],p16[15],s16[15],e16[15]);
fulladder fa01416(s15[17],e15[16],p16[16],s16[16],e16[16]);
fulladder fa01417(s15[18],e15[17],p16[17],s16[17],e16[17]);
fulladder fa01418(s15[19],e15[18],p16[18],s16[18],e16[18]);
fulladder fa01419(s15[20],e15[19],p16[19],s16[19],e16[19]);
fulladder fa01420(s15[21],e15[20],p16[20],s16[20],e16[20]);
fulladder fa01421(s15[22],e15[21],p16[21],s16[21],e16[21]);
fulladder fa01422(p15[23],e15[22],p16[22],s16[22],e16[22]);

assign mul[16]=s16[0];

fulladder fa0150(s16[1],e16[0],p17[0],s17[0],e17[0]);
fulladder fa01a51(s16[2],e16[1],p17[1],s17[1],e17[1]);
fulladder fa0152(s16[3],e16[2],p17[2],s17[2],e17[2]);
fulladder fa0153(s16[4],e16[3],p17[3],s17[3],e17[3]);
fulladder fa0154(s16[5],e16[4],p17[4],s17[4],e17[4]);
fulladder fa0155(s16[6],e16[5],p17[5],s17[5],e17[5]);
fulladder fa0156(s16[7],e16[6],p17[6],s17[6],e17[6]);
fulladder fa0157(s16[8],e16[7],p17[7],s17[7],e17[7]);
fulladder fa0158(s16[9],e16[8],p17[8],s17[8],e17[8]);
fulladder fa0159(s16[10],e16[9],p17[9],s17[9],e17[9]);
fulladder fa01510(s16[11],e16[10],p17[10],s17[10],e17[10]);
fulladder fa01511(s16[12],e16[11],p17[11],s17[11],e17[11]);
fulladder fa01512(s16[13],e16[12],p17[12],s17[12],e17[12]);
fulladder fa01513(s16[14],e16[13],p17[13],s17[13],e17[13]);
fulladder fa01514(s16[15],e16[14],p17[14],s17[14],e17[14]);
fulladder fa01515(s16[16],e16[15],p17[15],s17[15],e17[15]);
fulladder fa01516(s16[17],e16[16],p17[16],s17[16],e17[16]);
fulladder fa01517(s16[18],e16[17],p17[17],s17[17],e17[17]);
fulladder fa01518(s16[19],e16[18],p17[18],s17[18],e17[18]);
fulladder fa01519(s16[20],e16[19],p17[19],s17[19],e17[19]);
fulladder fa01520(s16[21],e16[20],p17[20],s17[20],e17[20]);
fulladder fa01521(s16[22],e16[21],p17[21],s17[21],e17[21]);
fulladder fa01522(p16[23],e16[22],p17[22],s17[22],e17[22]);

assign mul[17]=s17[0];

fulladder fa0160(s17[1],e17[0],p18[0],s18[0],e18[0]);
fulladder fa0a161(s17[2],e17[1],p18[1],s18[1],e18[1]);
fulladder fa0162(s17[3],e17[2],p18[2],s18[2],e18[2]);
fulladder fa0163(s17[4],e17[3],p18[3],s18[3],e18[3]);
fulladder fa0164(s17[5],e17[4],p18[4],s18[4],e18[4]);
fulladder fa0165(s17[6],e17[5],p18[5],s18[5],e18[5]);
fulladder fa0166(s17[7],e17[6],p18[6],s18[6],e18[6]);
fulladder fa0167(s17[8],e17[7],p18[7],s18[7],e18[7]);
fulladder fa0168(s17[9],e17[8],p18[8],s18[8],e18[8]);
fulladder fa0169(s17[10],e17[9],p18[9],s18[9],e18[9]);
fulladder fa01610(s17[11],e17[10],p18[10],s18[10],e18[10]);
fulladder fa01611(s17[12],e17[11],p18[11],s18[11],e18[11]);
fulladder fa01612(s17[13],e17[12],p18[12],s18[12],e18[12]);
fulladder fa01613(s17[14],e17[13],p18[13],s18[13],e18[13]);
fulladder fa01614(s17[15],e17[14],p18[14],s18[14],e18[14]);
fulladder fa01615(s17[16],e17[15],p18[15],s18[15],e18[15]);
fulladder fa01616(s17[17],e17[16],p18[16],s18[16],e18[16]);
fulladder fa01617(s17[18],e17[17],p18[17],s18[17],e18[17]);
fulladder fa01618(s17[19],e17[18],p18[18],s18[18],e18[18]);
fulladder fa01619(s17[20],e17[19],p18[19],s18[19],e18[19]);
fulladder fa01620(s17[21],e17[20],p18[20],s18[20],e18[20]);
fulladder fa01621(s17[22],e17[21],p18[21],s18[21],e18[21]);
fulladder fa01622(p17[23],e17[22],p18[22],s18[22],e18[22]);

assign mul[18]=s18[0];

fulladder fa0170(s18[1],e18[0],p19[0],s19[0],e19[0]);
fulladder faa0171(s18[2],e18[1],p19[1],s19[1],e19[1]);
fulladder fa0172(s18[3],e18[2],p19[2],s19[2],e19[2]);
fulladder fa0173(s18[4],e18[3],p19[3],s19[3],e19[3]);
fulladder fa0174(s18[5],e18[4],p19[4],s19[4],e19[4]);
fulladder fa0175(s18[6],e18[5],p19[5],s19[5],e19[5]);
fulladder fa0176(s18[7],e18[6],p19[6],s19[6],e19[6]);
fulladder fa0177(s18[8],e18[7],p19[7],s19[7],e19[7]);
fulladder fa0178(s18[9],e18[8],p19[8],s19[8],e19[8]);
fulladder fa0179(s18[10],e18[9],p19[9],s19[9],e19[9]);
fulladder fa01710(s18[11],e18[10],p19[10],s19[10],e19[10]);
fulladder fa01711(s18[12],e18[11],p19[11],s19[11],e19[11]);
fulladder fa01712(s18[13],e18[12],p19[12],s19[12],e19[12]);
fulladder fa01713(s18[14],e18[13],p19[13],s19[13],e19[13]);
fulladder fa01714(s18[15],e18[14],p19[14],s19[14],e19[14]);
fulladder fa01715(s18[16],e18[15],p19[15],s19[15],e19[15]);
fulladder fa01716(s18[17],e18[16],p19[16],s19[16],e19[16]);
fulladder fa01717(s18[18],e18[17],p19[17],s19[17],e19[17]);
fulladder fa01718(s18[19],e18[18],p19[18],s19[18],e19[18]);
fulladder fa01719(s18[20],e18[19],p19[19],s19[19],e19[19]);
fulladder fa01720(s18[21],e18[20],p19[20],s19[20],e19[20]);
fulladder fa01721(s18[22],e18[21],p19[21],s19[21],e19[21]);
fulladder fa01722(p18[23],e18[22],p19[22],s19[22],e19[22]);

assign mul[19]=s19[0];

fulladder fa0180(s19[1],e19[0],p20[0],s20[0],e20[0]);
fulladder faa0181(s19[2],e19[1],p20[1],s20[1],e20[1]);
fulladder fa0182(s19[3],e19[2],p20[2],s20[2],e20[2]);
fulladder fa0183(s19[4],e19[3],p20[3],s20[3],e20[3]);
fulladder fa0184(s19[5],e19[4],p20[4],s20[4],e20[4]);
fulladder fa0185(s19[6],e19[5],p20[5],s20[5],e20[5]);
fulladder fa0186(s19[7],e19[6],p20[6],s20[6],e20[6]);
fulladder fa0187(s19[8],e19[7],p20[7],s20[7],e20[7]);
fulladder fa0188(s19[9],e19[8],p20[8],s20[8],e20[8]);
fulladder fa0189(s19[10],e19[9],p20[9],s20[9],e20[9]);
fulladder fa01810(s19[11],e19[10],p20[10],s20[10],e20[10]);
fulladder fa01811(s19[12],e19[11],p20[11],s20[11],e20[11]);
fulladder fa01812(s19[13],e19[12],p20[12],s20[12],e20[12]);
fulladder fa01813(s19[14],e19[13],p20[13],s20[13],e20[13]);
fulladder fa01814(s19[15],e19[14],p20[14],s20[14],e20[14]);
fulladder fa01815(s19[16],e19[15],p20[15],s20[15],e20[15]);
fulladder fa01816(s19[17],e19[16],p20[16],s20[16],e20[16]);
fulladder fa01817(s19[18],e19[17],p20[17],s20[17],e20[17]);
fulladder fa01818(s19[19],e19[18],p20[18],s20[18],e20[18]);
fulladder fa01819(s19[20],e19[19],p20[19],s20[19],e20[19]);
fulladder fa01820(s19[21],e19[20],p20[20],s20[20],e20[20]);
fulladder fa01821(s19[22],e19[21],p20[21],s20[21],e20[21]);
fulladder fa01822(p19[23],e19[22],p20[22],s20[22],e20[22]);

assign mul[20]=s20[0];

fulladder fa0190(s20[1],e20[0],p21[0],s21[0],e21[0]);
fulladder f191(s20[2],e20[1],p21[1],s21[1],e21[1]);
fulladder fa0192(s20[3],e20[2],p21[2],s21[2],e21[2]);
fulladder fa0193(s20[4],e20[3],p21[3],s21[3],e21[3]);
fulladder fa0194(s20[5],e20[4],p21[4],s21[4],e21[4]);
fulladder fa0195(s20[6],e20[5],p21[5],s21[5],e21[5]);
fulladder fa0196(s20[7],e20[6],p21[6],s21[6],e21[6]);
fulladder fa0197(s20[8],e20[7],p21[7],s21[7],e21[7]);
fulladder fa0198(s20[9],e20[8],p21[8],s21[8],e21[8]);
fulladder fa0199(s20[10],e20[9],p21[9],s21[9],e21[9]);
fulladder fa01910(s20[11],e20[10],p21[10],s21[10],e21[10]);
fulladder fa01911(s20[12],e20[11],p21[11],s21[11],e21[11]);
fulladder fa01912(s20[13],e20[12],p21[12],s21[12],e21[12]);
fulladder fa01913(s20[14],e20[13],p21[13],s21[13],e21[13]);
fulladder fa01914(s20[15],e20[14],p21[14],s21[14],e21[14]);
fulladder fa01915(s20[16],e20[15],p21[15],s21[15],e21[15]);
fulladder fa01916(s20[17],e20[16],p21[16],s21[16],e21[16]);
fulladder fa01917(s20[18],e20[17],p21[17],s21[17],e21[17]);
fulladder fa01918(s20[19],e20[18],p21[18],s21[18],e21[18]);
fulladder fa01919(s20[20],e20[19],p21[19],s21[19],e21[19]);
fulladder fa01920(s20[21],e20[20],p21[20],s21[20],e21[20]);
fulladder fa01921(s20[22],e20[21],p21[21],s21[21],e21[21]);
fulladder fa01922(p20[23],e20[22],p21[22],s21[22],e21[22]);

assign mul[21]=s21[0];

fulladder fa0200(s21[1],e21[0],p22[0],s22[0],e22[0]);
fulladder f0201(s21[2],e21[1],p22[1],s22[1],e22[1]);
fulladder fa0202(s21[3],e21[2],p22[2],s22[2],e22[2]);
fulladder fa0203(s21[4],e21[3],p22[3],s22[3],e22[3]);
fulladder fa0204(s21[5],e21[4],p22[4],s22[4],e22[4]);
fulladder fa0205(s21[6],e21[5],p22[5],s22[5],e22[5]);
fulladder fa0206(s21[7],e21[6],p22[6],s22[6],e22[6]);
fulladder fa0207(s21[8],e21[7],p22[7],s22[7],e22[7]);
fulladder fa0208(s21[9],e21[8],p22[8],s22[8],e22[8]);
fulladder fa0209(s21[10],e21[9],p22[9],s22[9],e22[9]);
fulladder fa02010(s21[11],e21[10],p22[10],s22[10],e22[10]);
fulladder fa02011(s21[12],e21[11],p22[11],s22[11],e22[11]);
fulladder fa02012(s21[13],e21[12],p22[12],s22[12],e22[12]);
fulladder fa02013(s21[14],e21[13],p22[13],s22[13],e22[13]);
fulladder fa02014(s21[15],e21[14],p22[14],s22[14],e22[14]);
fulladder fa02015(s21[16],e21[15],p22[15],s22[15],e22[15]);
fulladder fa02016(s21[17],e21[16],p22[16],s22[16],e22[16]);
fulladder fa02017(s21[18],e21[17],p22[17],s22[17],e22[17]);
fulladder fa02018(s21[19],e21[18],p22[18],s22[18],e22[18]);
fulladder fa02019(s21[20],e21[19],p22[19],s22[19],e22[19]);
fulladder fa02020(s21[21],e21[20],p22[20],s22[20],e22[20]);
fulladder fa02021(s21[22],e21[21],p22[21],s22[21],e22[21]);
fulladder fa02022(p21[23],e21[22],p22[22],s22[22],e22[22]);

assign mul[22]=s22[0];

fulladder f0210(s22[1],e22[0],p23[0],s23[0],e23[0]);
fulladder f0211(s22[2],e22[1],p23[1],s23[1],e23[1]);
fulladder f0212(s22[3],e22[2],p23[2],s23[2],e23[2]);
fulladder f0213(s22[4],e22[3],p23[3],s23[3],e23[3]);
fulladder f0214(s22[5],e22[4],p23[4],s23[4],e23[4]);
fulladder f0215(s22[6],e22[5],p23[5],s23[5],e23[5]);
fulladder f0216(s22[7],e22[6],p23[6],s23[6],e23[6]);
fulladder f217(s22[8],e22[7],p23[7],s23[7],e23[7]);
fulladder f0218(s22[9],e22[8],p23[8],s23[8],e23[8]);
fulladder f219(s22[10],e22[9],p23[9],s23[9],e23[9]);
fulladder fa02110(s22[11],e22[10],p23[10],s23[10],e23[10]);
fulladder fa02111(s22[12],e22[11],p23[11],s23[11],e23[11]);
fulladder fa02112(s22[13],e22[12],p23[12],s23[12],e23[12]);
fulladder fa02113(s22[14],e22[13],p23[13],s23[13],e23[13]);
fulladder fa02114(s22[15],e22[14],p23[14],s23[14],e23[14]);
fulladder fa02115(s22[16],e22[15],p23[15],s23[15],e23[15]);
fulladder fa02116(s22[17],e22[16],p23[16],s23[16],e23[16]);
fulladder fa02117(s22[18],e22[17],p23[17],s23[17],e23[17]);
fulladder fa02118(s22[19],e22[18],p23[18],s23[18],e23[18]);
fulladder fa02119(s22[20],e22[19],p23[19],s23[19],e23[19]);
fulladder fa02120(s22[21],e22[20],p23[20],s23[20],e23[20]);
fulladder fa02121(s22[22],e22[21],p23[21],s23[21],e23[21]);
fulladder fa02122(p22[23],e22[22],p23[22],s23[22],e23[22]);

assign mul[23]=s23[0];
assign c[21:0] = s23[22:1];
assign c[22]=p23[23];
assign c[23]=1'b0;
assign d[22:0] = e23;
assign d[23] = 1'b0;

rca24 rrr(c,d,sum,f);

assign mul[47:24]=sum;

endmodule