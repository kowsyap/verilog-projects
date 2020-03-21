`include "nrd8.v"

module nrd8_tb;
reg [7:0] a;
reg [6:0] b;
wire [7:0] quo,rem;

nrd8 rrr(a,b,quo,rem);

initial begin
a=0;b=0;
#1 a=8'd50;b=7'd4;
#4 a=8'd40;b=7'd3;
#4 a=8'd255;b=7'd2;
#4;
 $finish;
end



initial
$monitor($time," a=%d,b=%d,quo=%d,rem=%d",a,b,quo,rem);

endmodule