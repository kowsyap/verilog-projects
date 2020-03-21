`include "rca4.v"

module rca4_tb;

reg[3:0] a,b;
wire[3:0] sum;
wire carry;

rca4 rca0(a,b,sum,carry);

initial begin

a=0;b=0;
#20 b=4'b0110;
#30 a=4'b0110;b=4'b0110;
#40 a=4'b1111;b=4'b1111;

end

initial
$monitor("t=%3d a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);

endmodule