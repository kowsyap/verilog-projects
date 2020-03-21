`include "rcc16.v"
module rcc16_tb;
reg clk,reset;
wire[15:0] q;

rcc16 rrr(clk,reset,q);
initial begin
$dumpfile("rcc16.vcd");
$dumpvars(0,clk,reset,q);

clk=0;
forever #1 clk= ~clk;
end
initial begin
reset=1;
#20 reset = 1'b0;
#100000 reset = 1'b1;
#20 reset = 1'b0;$finish;

end 
endmodule