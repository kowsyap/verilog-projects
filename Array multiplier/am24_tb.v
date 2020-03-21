`include "am24.v"

module am24_tb;

reg[23:0] a,b;
wire[23:0] c,d;
wire[47:0] mul;
wire[22:0] s23;
am24 eee(a,b,mul);
initial begin
a=0;b=0;
#10 a=24'd40;b=24'd22;
#10 a=24'd1000000;b=24'd301;
end

initial
$monitor("t=%3d a=%d,b=%d,mul=%d",$time,a,b,mul);

endmodule