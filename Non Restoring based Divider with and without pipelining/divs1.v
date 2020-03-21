module divs1(a,q,m,a2,q2);
input [23:0] a,q,m;
output[23:0] a2;
output reg [23:0] q2;
wire [23:0] a1,q1;

assign a1[23:0] = {a[22:0],q[23]};
assign q1[23:0] = {q[22:0],1'b0};
reg [23:0] m1;
always@(*)
begin
	if(a[23]==1'b0)
		m1<=~m+1'b1;
	else
		m1<=m;
end

rca24 r2(a1,m1,a2,c1);

always@(*)
begin
	q2<=q1;
	if(a2[23]==1'b0)
		q2[0]<=1'b1;
	else
		q2[0]<=1'b0;
end
endmodule