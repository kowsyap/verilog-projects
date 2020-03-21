`include "fulladder.v"

module fulladder_tb;

reg a,b,c;
wire sum,carry;

fulladder fa0(a,b,c,sum,carry);

initial begin

a=0;b=0;c=0;

#20 b=1;
#20 a=1;b=0;c=1;
#20 b=1;

end

initial
$monitor("t=%3d a=%b,b=%b,c=%b,sum=%b,carry=%b",$time,a,b,c,sum,carry);

endmodule