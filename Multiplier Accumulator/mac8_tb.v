`include "mac8.v"

module mac8_tb;
reg clk,reset;
reg[7:0] a,b;
wire[15:0] s;
wire carry;

mac8 m11(clk,reset,a,b,s,carry);
initial begin
clk=1'b0;reset=1'b1;
#4 a=8'd1;b=8'd2;reset=1'b0;
#4 a=8'd3;b=8'd4;
#4 a=8'd5;b=8'd6;
#4 a=8'd7;b=8'd8;
#4 a=8'd9;b=8'd10;
#4 a=8'd11;b=8'd12;
#4 a=8'd13;b=8'd14;
#4 a=8'd15;b=8'd16;
#4 a=8'd17;b=8'd18;
#4 a=8'd127;b=8'd127;
#4 a=8'd127;b=8'd127;
#4 a=8'd127;b=8'd127;
#4 a=8'd127;b=8'd127;

#4 reset=1'b1;
 $finish;
end
always
begin
#1	if(carry==1'b1)
	reset=1'b1;
end

always
begin
#2 clk=~clk;
end

initial
$monitor($time,"	a=%d,b=%d,sum=%d,carry=%b,reset=%d",a,b,s,carry,reset);

endmodule