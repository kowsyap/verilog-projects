`include "mba8r4.v"
module mba8r4_tb;
reg signed[7:0]x,y;
wire signed[15:0]z;
mba8r4 mmm(x,y,z);
initial
begin
x=8'd0;y=8'd0;
#2 x = 8'b01100111;y = -8'b01010001;
#2 x = -8'b01100111;y = +8'b01110001;
#2 x = -8'b00001111;y = +8'b00001111;
#2 x = -8'b00000111;y = -8'b00010001;
#2 x = +8'b00000010;y = +8'b00000101;
end
initial
$monitor("t=%3d x= %b(%d) y = %b(%d) z = %b(%d)",$time,x,x,y,y,z,z);
endmodule
