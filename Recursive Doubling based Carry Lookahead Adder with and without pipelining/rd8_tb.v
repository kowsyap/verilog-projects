`include "rd8.v"

module rd8_tb;

reg[7:0] a,b;
wire[7:0] sum;
wire carry;

rd8 rd81(a,b,sum,carry);
initial begin
a=0;b=0;
#1 a=8'b11011110;b=8'b10011110;
#2 a=8'b11001010;b=8'b10011110;
end

initial
$monitor("t=%3d a=%b(%d),b=%b(%d),sum=%b(%d),carry=%b,",$time,a,a,b,b,sum,sum,carry);

endmodule