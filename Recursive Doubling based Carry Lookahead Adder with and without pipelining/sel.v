module sel(a,c);

input[1:0] a;
output c;

reg c;
always@(a)
begin
if(a==2'b00)
	assign c=1'b0;
else if(a==2'b11)
	assign c=1'b1;
end
endmodule
