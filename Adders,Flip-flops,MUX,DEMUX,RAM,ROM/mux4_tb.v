`include "mux4.v"
module mux4_tb;

reg[1:0] a,b,c,d;
reg[1:0] s;
wire[1:0] o;

mux4 muxx(a,b,c,d,s,o);
initial begin
a=1;b=0;c=0;d=1;s=2'b00;
#1 a=0;b=0;c=0;d=1;s=2'b01;
#2 s=2'b10;
#3 s=2'b11;
end

initial
$monitor("t=%3d a=%b,b=%b,c=%b,d=%b,s=%b,o=%b",$time,a,b,c,d,s,o);

endmodule