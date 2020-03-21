`include "nrd24.v"

module nrd24_tb;
reg[23:0] a;
reg[23:0] b;
wire[23:0] quo,rem;

nrd24 rrr(a,b,quo,rem);

initial begin
a=0;b=0;
#1 a=24'd50;b=24'd4;
#4 a=24'd40;b=24'd3;
#4 a=24'd40;b=24'd2;
#4 a=24'b100000000000000111111111;b=24'd2;
#4 a=24'b101010100100000000000000;b=24'b000010100000000000000000;
#4 a=24'b111100100000000000000000;b=24'b010100000000000000000000;


#4;
 $finish;
end



initial
$monitor($time," a=%d,b=%d,quo=%d,rem=%d",a,b,quo,rem);

endmodule