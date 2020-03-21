module divs(a,q,m,a2,q2);
input signed[7:0] a,q,m;
output signed[7:0] a2;
output reg signed[7:0] q2;
wire signed[7:0] a1,q1;

assign a1[7:0] = {a[6:0],q[7]};
assign q1[7:0] = {q[6:0],1'b0};
reg signed[7:0] m1;
always@(*)
begin
	if(a[7]==1'b0)
		m1<=~m+1'b1;
	else
		m1<=m;
end

rd8 r2(a1,m1,a2,c1);

always@(*)
begin
	q2<=q1;
	if(a2[7]==1'b0)
		q2[0]<=1'b1;
	else
		q2[0]<=1'b0;
end
endmodule