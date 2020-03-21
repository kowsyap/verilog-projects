`include "rd16.v"

module rd16_tb;

reg[15:0] a,b;
wire[15:0] sum;
wire carry;

rd16 rd161(a,b,sum,carry);
initial begin
a=0;b=0;
#1 a=16'b0100101010101110;b=16'b0001111000110100;
#2 a=16'b0001010101001010;b=16'b0001111000111001;
end

initial
$monitor("t=%3d a=%b(%d),b=%b(%d),sum=%b(%d),carry=%b,",$time,a,a,b,b,sum,sum,carry);

endmodule