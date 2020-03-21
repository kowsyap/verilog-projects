`include "rcas9.v"

module rcas9_tb;

reg[8:0] a,b;
reg d;
wire[8:0] ans;
wire carry;

rcas9 rcaa(a,b,d,ans,carry);

initial begin

a=0;b=0;
#20 a=9'd23;b=9'd5;d=1'b0;
#10 d=1'b1;
#20 a=9'd259;b=9'd127;d=1'b0;
#10 d=1'b1;
#20
$finish;

end

initial
$monitor("t=%3d a=%d,b=%d,d=%b,ans=%d,carry=%b",$time,a,b,d,ans,carry);

endmodule