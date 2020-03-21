`include "wtm8.v"
//`include "rd16.v"
`include "dff16b.v"

module fir8t4(clk,reset,x,y);
input[7:0] x;
input clk,reset;
output[15:0] y;
wire[15:0] m1,m2,m3,m4,s1,s2,s3,q1,q2,q3;

parameter h0 = 8'd5;
parameter h1 = 8'd6;
parameter h2 = 8'd7;
parameter h3 = 8'd8;

wtm8 ww1(x,h3,m1);
dff16b d1(clk,m1,reset,q1);

wtm8 ww2(x,h2,m2);
rd16 r1(q1,m2,s1,c);
dff16b d2(clk,s1,reset,q2);

wtm8 ww3(x,h1,m3);
rd16 r2(q2,m3,s2,c1);
dff16b d3(clk,s2,reset,q3);

wtm8 ww4(x,h0,m4);
rd16 r3(q3,m4,s3,c2);

assign y = s3;
endmodule
