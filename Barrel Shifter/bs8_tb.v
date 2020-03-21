`include "bs8.v"

module bs8_tb;

reg[7:0] a;
reg[2:0] s;
reg d;
wire[7:0] out;

bs8 bb(a,s,d,out);

initial begin

a=8'b11111111;s=3'd0;d=1'b0;
#2 s=3'd1;
#2 s=3'd2;
#2 s=3'd3;
#2 s=3'd4;
#2 s=3'd5;
#2 s=3'd6;
#2 s=3'd7;

#2 s=3'd0;d=1'b1;
#2 s=3'd1;
#2 s=3'd2;
#2 s=3'd3;
#2 s=3'd4;
#2 s=3'd5;
#2 s=3'd6;
#2 s=3'd7;
//#2 s=4'd8;
//#2 s=4'd9;
//#2 s=4'd10;
//#2 s=4'd11;
//#2 s=4'd12;
//#2 s=4'd13;
//#2 s=4'd14;
//#2 s=4'd15;

end

initial
$monitor("t=%3d a=%b,s=%d,,out=%b",$time,a,s,out);

endmodule