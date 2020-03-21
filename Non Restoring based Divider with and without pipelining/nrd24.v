`include "divs1.v"
`include "rca24.v"


module nrd24(dividend,divisor,quo,rem);
input [23:0] dividend;
input [23:0] divisor;
output [23:0] quo;
output reg [23:0]rem;
wire [23:0] aaa,aa,aa0,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,aa9,aa10,aa11,aa12,aa13,aa14,aa15,aa16,aa17,aa18,aa19,aa20,aa21,aa22,aa23,aa24,qq,qq0,qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15,qq16,qq17,qq18,qq19,qq20,qq21,qq22,qq23,m;

assign aa[23:0] = 24'd0;
assign qq[23:0] = dividend[23:0];
assign m[23:0] = divisor[23:0];

divs1 d0(aa,qq,m,aa0,qq0);
divs1 d1(aa0,qq0,m,aa1,qq1);
divs1 d2(aa1,qq1,m,aa2,qq2);
divs1 d3(aa2,qq2,m,aa3,qq3);
divs1 d4(aa3,qq3,m,aa4,qq4);
divs1 d5(aa4,qq4,m,aa5,qq5);
divs1 d6(aa5,qq5,m,aa6,qq6);
divs1 d7(aa6,qq6,m,aa7,qq7);
divs1 d8(aa7,qq7,m,aa8,qq8);
divs1 d9(aa8,qq8,m,aa9,qq9);
divs1 d10(aa9,qq9,m,aa10,qq10);
divs1 d11(aa10,qq10,m,aa11,qq11);
divs1 d12(aa11,qq11,m,aa12,qq12);
divs1 d13(aa12,qq12,m,aa13,qq13);
divs1 d14(aa13,qq13,m,aa14,qq14);
divs1 d15(aa14,qq14,m,aa15,qq15);
divs1 d16(aa15,qq15,m,aa16,qq16);
divs1 d17(aa16,qq16,m,aa17,qq17);
divs1 d18(aa17,qq17,m,aa18,qq18);
divs1 d19(aa18,qq18,m,aa19,qq19);
divs1 d20(aa19,qq19,m,aa20,qq20);
divs1 d21(aa20,qq20,m,aa21,qq21);
divs1 d22(aa21,qq21,m,aa22,qq22);
divs1 d23(aa22,qq22,m,aa23,qq23);

assign quo[23:0] = qq23[23:0];
rca24 r1(aa23,m,aa24,c);

always@(*)
begin
	if(aa23[23]==1'b0)
		rem=aa23;
	else
		rem=aa24;
end
endmodule
