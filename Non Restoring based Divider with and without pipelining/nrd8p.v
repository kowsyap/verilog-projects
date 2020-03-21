`include "divs.v"
`include "rd8.v"
`include "dff8b.v"

module nrd8(clk,reset,dividend,divisor,quo,rem);
input signed[7:0] dividend;
input signed[6:0] divisor;
input clk,reset;
output signed[7:0] quo;
output reg signed[7:0]rem;
wire signed[7:0] aaa,aa,aa0,aa1,aa2,aa3,aa4,aa5,aa6,qq,qq0,qq1,qq2,qq3,qq4,qq5,qq6,m,a,a0,a1,a2,a3,a4,a5,a6,q,q0,q1,q2,q3,q4,q5,q6,a7,m0,m1,m2,m3,m4,m5,m6,m7;

assign aa[7:0] = 8'd0;
assign qq[7:0] = dividend[7:0];
assign m[7:0] = {1'b0,divisor[6:0]};


divs d0(aa,qq,m,a,q);
dff8b f0(clk,a,reset,aa0);
dff8b ff0(clk,q,reset,qq0);
dff8b fff0(clk,m,reset,m0);

divs d1(aa0,qq0,m0,a0,q0);
dff8b f1(clk,a0,reset,aa1);
dff8b ff1(clk,q0,reset,qq1);
dff8b fff1(clk,m0,reset,m1);

divs d2(aa1,qq1,m1,a1,q1);
dff8b f2(clk,a1,reset,aa2);
dff8b ff2(clk,q1,reset,qq2);
dff8b fff2(clk,m1,reset,m2);

divs d3(aa2,qq2,m2,a2,q2);
dff8b f3(clk,a2,reset,aa3);
dff8b ff3(clk,q2,reset,qq3);
dff8b fff3(clk,m2,reset,m3);

divs d4(aa3,qq3,m3,a3,q3);
dff8b f4(clk,a3,reset,aa4);
dff8b ff4(clk,q3,reset,qq4);
dff8b fff4(clk,m3,reset,m4);

divs d5(aa4,qq4,m4,a4,q4);
dff8b f5(clk,a4,reset,aa5);
dff8b ff5(clk,q4,reset,qq5);
dff8b fff5(clk,m4,reset,m5);

divs d6(aa5,qq5,m5,a5,q5);
dff8b f6(clk,a5,reset,aa6);
dff8b ff6(clk,q5,reset,qq6);
dff8b fff6(clk,m5,reset,m6);

divs d7(aa6,qq6,m6,a6,q6);

assign quo[7:0] = q6[7:0];
rd8 r1(a6,m6,a7,c);

always@(*)
begin
	if(a6[7]==1'b0)
		rem=a6;
	else
		rem=a7;
end
endmodule
