module jkff(j,k,clk,reset,q);
input j,k,clk,reset;
output q;
reg q;
always@(posedge reset or negedge clk)
begin
if(reset==1)
	q<= 0;
else
	if(j==0 && k==0)
		q= q;
	else if(j==0 && j==1)
		q= 0;
	else if(j==1 && j==0)
		q= 1;
	else	
		q= ~q;
end
endmodule