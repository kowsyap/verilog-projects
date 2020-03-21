`include "fir8t4.v"

module fir8t4_tb;
reg clk,reset;
reg[7:0] x;
wire[15:0] y;
//wire carry;

fir8t4 f11(clk,reset,x,y);

initial begin

clk=1'b0;reset=1'b1;
#4 x=8'd1;reset=1'b0;
#4 x=8'd3;
#4 x=8'd5;
#4 x=8'd7;
#4 x=8'd1;
#4 x=8'd0;
#12 
 $finish;
end

always
begin
#2 clk=~clk;
end

initial
		$monitor($time,"	x=%d,y=%d,clk=%d,reset=%d",x,y,clk,reset);
endmodule