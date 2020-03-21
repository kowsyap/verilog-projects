`include "rd8p.v"

module rd8p_tb;
reg clk,reset;
reg[7:0] a,b;
wire[7:0] sum;
wire carry;

rd8p rd811(clk,reset,a,b,sum,carry);
initial begin
$dumpfile("rd8p.vcd");
$dumpvars(0,clk,reset,a,b,sum,carry);

//clk=0;
//forever #2 clk= ~clk;
end
initial begin
//a=0;b=0;reset=0;
// a=16'b0100101010101110;b=16'b0001111000110100;reset=1'b0;
//#4 a=16'b0001010101001010;b=16'b0001111000111001;
//#4  a=16'd3460;b=16'd3034;
//a=0;b=0;reset=1'b1;
clk=1'b0;
 a=8'd3;b=8'd5;reset=1'b0;
#4 a=8'd5;b=8'd8;
#4 a=8'd128;b=8'd128;
#16;
 $finish;
end

always
begin
#2 clk=~clk;
end

initial
$monitor($time,"	a=%d,b=%d,sum=%d,carry=%b,clk=%d,reset=%d",a,b,sum,carry,clk,reset);

endmodule