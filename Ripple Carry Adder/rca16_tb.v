`include "rca16.v"

module rca16_tb;

reg[15:0] a,b;
wire[15:0] sum;
wire carry;

rca16 rcaa(a,b,sum,carry);

initial begin
//$dumpfile("rca16.v");
//$dumpvars(0,a,b,sum,carry);
a=0;b=0;
#20 a=16'd23;b=16'b0000000000000110;
#20 a=16'h6;b=16'h6;
#20 a=16'd65535;b=16'd65535;
#20
//$finish;

end

initial
$monitor("t=%3d a=%d,b=%d,sum=%d,carry=%b",$time,a,b,sum,carry);

endmodule