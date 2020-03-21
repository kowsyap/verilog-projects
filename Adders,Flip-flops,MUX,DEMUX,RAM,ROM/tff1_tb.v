`include "tff1.v"
module tff1_tb;
reg clk,reset;
wire q;

tff1 ttt(clk,reset,q);
initial begin
$dumpfile("tff1.vcd");
$dumpvars(0,clk,reset,q);

clk=0;
forever #5 clk= ~clk;
end
initial begin
reset=1;
#20 reset = 1'b0;
#180 reset = 1'b1;
#20 reset = 1'b0;$finish;

end 
endmodule