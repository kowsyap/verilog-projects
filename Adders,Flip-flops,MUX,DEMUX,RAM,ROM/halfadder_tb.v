`include "halfadder.v"

module halfadder_tb;

reg a,b;
wire sum,carry;

halfadder ha0(a,b,sum,carry);

initial begin

a=0;b=0;

#20 b=1;
#20 a=1;b=0;
#20 b=1;

end

initial
$monitor("t=%3d a=%b,b=%b,sum=%b,carry=%b",$time,a,b,sum,carry);

endmodule