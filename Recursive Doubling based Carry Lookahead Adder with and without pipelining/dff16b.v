module dff16b(clk,d,reset,q);
input[15:0] d;
input clk,reset;
output[15:0] q;
reg[15:0] q;
always@(posedge clk)
begin
if(reset==1'b1)
	q<=0;
else
	q<=d;
end
endmodule
