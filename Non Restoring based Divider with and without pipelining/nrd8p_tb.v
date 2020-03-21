`include "nrd8p.v"

module nrd8_tb;
reg clk,reset;
reg [7:0] a;
reg [6:0] b;
wire [7:0] quo,rem;

nrd8 rrr(clk,reset,a,b,quo,rem);

initial begin

clk=1'b0;
// a=8'd0;b=7'd0;reset=1'b1;
 a=8'd50;b=7'd4;reset=1'b0;
#4 a=8'd40;b=7'd3;
#4 a=8'd40;b=7'd2;
#4 a=8'd118;b=8'd20;
#4 a=8'd218;b=8'd24;
#50;
 $finish;
end

always
begin
#2 clk=~clk;
end

initial
$monitor($time,"	a=%d,b=%d,quo=%d,rem=%d,clk=%d,reset=%d",a,b,quo,rem,clk,reset);

endmodule