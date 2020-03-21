`include "rom5.v"
module rom5_tb;
reg[4:0] address;
wire[7:0] data;

rom5 rrr(address,data);

initial begin
//address=0;data=0;
#20 address=5'd24;
#20 address=5'd4;
end
initial
$monitor("t=%3d address=%d,data=%d \n",$time,address,data );
	 
endmodule
