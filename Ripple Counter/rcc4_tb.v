`include "rcc4.v"
module rcc4_tb;
reg clk,reset;
wire[3:0] q;

rcc4 rrr(clk,reset,q);
initial begin
$dumpfile("rcc4.vcd");
$dumpvars(0,clk,reset,q);

clk=0;
forever #5 clk= ~clk;
end
initial begin
reset=1;
#20 reset = 1'b0;
#80 reset = 1'b1;
#100
#10 reset = 1'b0;$finish;
end
initial
$monitor("t = %d,q=%d",$time,q);
endmodule