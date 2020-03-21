module tff1(t,clk,reset,q);
input clk,t,reset;
output q;
reg q;
always@(posedge reset or negedge clk)
begin
if(reset==1)
	q<= 0;
else
	if(t==0)
		q= q;
	else
		q= ~q;
end
endmodule