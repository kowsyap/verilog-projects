`include "wtm8.v"
`include "rd16.v"
`include "dff16b.v"

module mac8(clk,reset,a,b,s1,carry);

input[7:0] a,b;
input clk,reset;
output[15:0] s1;
output carry;
wire[15:0] mul,s;

wtm8 www(a,b,mul);
rd16 rrr(mul,s,s1,carry);
dff16b ddd(clk,s1,reset,s);
endmodule