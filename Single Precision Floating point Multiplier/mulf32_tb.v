`include "mulf32.v"

module mulf32_tb;

reg[31:0] a,b;
wire[31:0] mul;

mulf32 rcaa(a,b,mul);

initial begin
a=0;b=0;
#20 a=32'b01000000101000000000000000000000;b=32'b11000000101000000000000000000000;//5*5 = 25
#20 a=32'b11000000100001000000000000000000;b=32'b11000001010000000000000000000000;//4.125*12 = 49.5
#20
$finish;

end

initial
$monitor("t=%3d a=%b,b=%b,mul=%b",$time,a,b,mul);

endmodule