module negdff(clk,d,reset,q);
input d,clk,reset;
output q;
reg q;
always@(posedge reset or negedge clk)
begin
if(reset==1'b1)
	q<=1'b0;
else
	q<=d;
end
endmodule