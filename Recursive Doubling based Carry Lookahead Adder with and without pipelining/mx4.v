module mx4(a,b,c,d,s,o);
input a,b,c,d;
input[1:0] s;
output o;

reg o;
always@(a or b or c or d or s)
begin
if(s==2'b00)
	assign o=a;
else if(s==2'b01)
	assign o=b;
else if(s==2'b10)
	assign o=c;
else if(s==2'b11)
	assign o=d;
end
endmodule