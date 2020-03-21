`include "rd8.v"
`include "rcas9.v"
`include "am24.v"

module mulf32(a,b,mul);
input[31:0] a,b;
output reg[31:0] mul;

wire [47:0] r;
wire[23:0] x,y;
wire[8:0] s,q;
assign x[23:0] = {1'b1,a[22:0]};
assign y[23:0] = {1'b1,b[22:0]};

am24 www(x,y,r);
rd8 rrr(a[30:23],b[30:23],s[7:0],s[8]); //s=ae+be
rcas9 rss(s[8:0],9'd127,1'b1,q[8:0],c); //q=s-127
always@(*)
begin
	if(r[47]==1'b0)
		begin
			mul[22:0]<= r[46:23];
			mul[31]<= a[31]^b[31]; //sign
			mul[30:23]<= q[7:0]; //ae+be-bias
		end
	else
		begin
			mul[22:0]<= r[47:24];
			mul[31]<= a[31]^b[31]; //sign
			mul[30:23]<= q[7:0]+1; //ae+be-bias+1
		end
end
endmodule