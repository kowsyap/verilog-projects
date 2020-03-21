`include "ram5.v"
module ram5_tb;
reg[4:0] in_address,out_address;
reg[7:0] in_data;
wire[7:0] out_data;

ram5 rrr(in_address,out_address,in_data,out_data);

initial begin
//in_address=0;out_address=0;in_data=0;
#20 in_address=5'd24;out_address=5'd28;in_data=8'd45;
#20 in_address=5'd4;out_address=5'd24;in_data=8'd124;
#20 in_address=5'd14;out_address=5'd4;in_data=8'd124;
end
initial
$monitor("t=%3d in_address=%d,out_address=%d,in_data=%d,out_data=%d \n",$time,in_address,out_address,in_data,out_data );
	 
endmodule
