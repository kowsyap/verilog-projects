`include "wtm8.v"

module wtm8_tb;

reg[7:0] a,b;
wire[15:0] mul;

wtm8 emee(a,b,mul);
initial begin
a=0;b=0;
#10 a=8'b00001111;b=8'b00000110;
#10 a=8'd10;b=8'd31;
#20 a=8'b00001011;b=8'b11111110;
#20 a=8'b11010011;b=8'b11001110;
#20 a=8'b11111111;b=8'b11111111;
end

initial
$monitor("t=%3d a=%b(%d),b=%b(%d),sum=%b(%d)",$time,a,a,b,b,mul,mul);

endmodule