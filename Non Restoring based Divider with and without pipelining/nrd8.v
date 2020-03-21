`include "divs.v"
`include "rd8.v"

module nrd8(dividend,divisor,quo,rem);
input signed[7:0] dividend;
input signed[6:0] divisor;
output signed[7:0] quo;
output reg signed[7:0]rem;
wire signed[7:0] aaa,aa,aa0,aa1,aa2,aa3,aa4,aa5,aa6,aa7,aa8,qq,qq0,qq1,qq2,qq3,qq4,qq5,qq6,qq7,m;

assign aa[7:0] = 8'd0;
assign qq[7:0] = dividend[7:0];
assign m[7:0] = {1'b0,divisor[6:0]};

divs d0(aa,qq,m,aa0,qq0);
divs d1(aa0,qq0,m,aa1,qq1);
divs d2(aa1,qq1,m,aa2,qq2);
divs d3(aa2,qq2,m,aa3,qq3);
divs d4(aa3,qq3,m,aa4,qq4);
divs d5(aa4,qq4,m,aa5,qq5);
divs d6(aa5,qq5,m,aa6,qq6);
divs d7(aa6,qq6,m,aa7,qq7);

assign quo[7:0] = qq7[7:0];
rd8 r1(aa7,m,aa8,c);

always@(*)
begin
	if(aa7[7]==1'b0)
		rem=aa7;
	else
		rem=aa8;
end
endmodule
