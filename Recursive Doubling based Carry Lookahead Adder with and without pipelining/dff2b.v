module dff2b(clk,d,reset,q);
input[1:0] d;
input clk,reset;
output[1:0] q;
reg[1:0] q;
always@(posedge clk)
begin
if(reset==1'b1)
	q<=0;
else
	q<=d;
end
endmodule
