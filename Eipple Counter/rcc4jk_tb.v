`include "rcc4jk.v"
module rcc4jk_tb;
reg clk,reset;
wire[3:0] q;

rcc4jk rrrr(clk,reset,q);
initial begin
$dumpfile("rcc4jk.vcd");
$dumpvars(0,clk,reset,q);

clk=0;
forever #5 clk= ~clk;
end
initial begin
reset=1;
#20 reset = 1'b0;
#90 reset = 1'b1;
#100
#10 reset = 1'b0;$finish;
end
initial
$monitor("t = %d,q=%d",$time,q);
endmodule