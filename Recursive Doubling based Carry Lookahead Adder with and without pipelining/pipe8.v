`include "dff8b.v"
`include "dff16b.v"
`include "dff2b.v"
`include "dff.v"


module pipe8(clk,a,b,sc,d,s,reset,a1,b1,sc1,q,ss);
input[15:0] d;
input[7:0] a,b;
input[1:0] sc;
input s,clk,reset;
output[15:0] q;
output[7:0] a1,b1;
output[1:0] sc1;
output ss;

dff16b dffff0(clk,d,reset,q);
dff8b  dffff1(clk,a,reset,a1);
dff8b  dffff2(clk,b,reset,b1);
dff2b  dffff3(clk,sc,reset,sc1);
dff    dffff4(clk,s,reset,ss);

endmodule