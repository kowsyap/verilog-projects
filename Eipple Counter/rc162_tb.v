`include "rc162.v"
module rc162_tb;
reg clk,reset;
wire[15:0] q;

rc162 rrrr(clk,reset,q);
initial begin
$dumpfile("rc162.vcd");
$dumpvars(0,clk,reset,q);

clk=0;
forever #1 clk= ~clk;
end
initial begin
reset=1;
#20 reset = 1'b0;
#140000 reset = 1'b1;
#20 reset = 1'b0;$finish;

end 
endmodule