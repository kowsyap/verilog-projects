module ram16(in_address,out_address,in_data,out_data);
input[15:0] in_address,out_address;
input[7:0] in_data;
output reg[7:0] out_data;
reg[7:0] ram_mem[0:51528];
always@(in_address or out_address or in_data)
begin
 ram_mem[in_address]=in_data;
 out_data=ram_mem[out_address];
 end
endmodule