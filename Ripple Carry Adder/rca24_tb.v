`include "rca24.v"

module rca24_tb;

reg[23:0] a,b;
wire[23:0] sum;
wire carry;

rca24 rcaa(a,b,sum,carry);

initial begin
a=0;b=0;
#20 a=24'd23;b=24'd44;
#20 a=24'h6;b=24'h6;
#20 a=24'd16777215;b=24'd65535;
#20
$finish;

end

initial
$monitor("t=%3d a=%d,b=%d,sum=%d,carry=%b",$time,a,b,sum,carry);

endmodule