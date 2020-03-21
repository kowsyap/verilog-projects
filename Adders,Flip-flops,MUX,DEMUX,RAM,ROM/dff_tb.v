`include "dff.v"

module dff_tb;
reg clk,d,rst;
wire q;

dff dff0(clk,d,reset,q);

initial begin
$dumpfile("dff.vcd");
$dumpvars(0,clk,d,reset,q);

clk=0;
 forever #10 clk= ~clk;
end
initial begin
reset=1;
d<=0;
#100 reset=0; d<=1;
#100 d<=0;
#100 d<=1;
#100 d<=0;
#100
$finish;

end
endmodule