module rom5(address,data);
input[4:0] address;
output[7:0] data;
wire[7:0] rom_mem[0:31];

assign rom_mem[0]=8'd20;
assign rom_mem[1]=8'd22;
assign rom_mem[2]=8'd24;
assign rom_mem[3]=8'd26;
assign rom_mem[4]=8'd28;
assign rom_mem[5]=8'd30;
assign rom_mem[6]=8'd32;
assign rom_mem[7]=8'd34;
assign rom_mem[8]=8'd36;
assign rom_mem[9]=8'd38;
assign rom_mem[10]=8'd40;
assign rom_mem[11]=8'd42;
assign rom_mem[12]=8'd44;
assign rom_mem[13]=8'd46;
assign rom_mem[14]=8'd48;
assign rom_mem[15]=8'd50;
assign rom_mem[16]=8'd52;
assign rom_mem[17]=8'd54;
assign rom_mem[18]=8'd56;
assign rom_mem[19]=8'd58;
assign rom_mem[20]=8'd60;
assign rom_mem[21]=8'd62;
assign rom_mem[22]=8'd64;
assign rom_mem[23]=8'd66;
assign rom_mem[24]=8'd68;
assign rom_mem[25]=8'd70;
assign rom_mem[26]=8'd72;
assign rom_mem[27]=8'd74;
assign rom_mem[28]=8'd76;
assign rom_mem[29]=8'd78;
assign rom_mem[30]=8'd80;
assign rom_mem[31]=8'd82;

assign data=rom_mem[address];
endmodule