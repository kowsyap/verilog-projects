//`include "mux4.v"

module kpg4_16(kpg3,kpg4,s);
input[31:0] kpg3;
output[31:0] kpg4;
output s;
wire[1:0] k,g;

assign k=2'b00;
assign g=2'b11;

assign kpg4[1:0]=kpg3[1:0];
assign kpg4[3:2]=kpg3[3:2];
assign kpg4[5:4]=kpg3[5:4];
assign kpg4[7:6]=kpg3[7:6];
assign kpg4[9:8]=kpg3[9:8];
assign kpg4[11:10]=kpg3[11:10];
assign kpg4[13:12]=kpg3[13:12];
assign kpg4[15:14]=kpg3[15:14];
mux4 mux30(k,kpg3[1:0],kpg3[1:0],g,kpg3[17:16],kpg4[17:16]);
mux4 mux31(k,kpg3[3:2],kpg3[3:2],g,kpg3[19:18],kpg4[19:18]);
mux4 mux32(k,kpg3[5:4],kpg3[5:4],g,kpg3[21:20],kpg4[21:20]);
mux4 mux33(k,kpg3[7:6],kpg3[7:6],g,kpg3[23:22],kpg4[23:22]);
mux4 mux34(k,kpg3[9:8],kpg3[9:8],g,kpg3[25:24],kpg4[25:24]);
mux4 mux35(k,kpg3[11:10],kpg3[11:10],g,kpg3[27:26],kpg4[27:26]);
mux4 mux36(k,kpg3[13:12],kpg3[13:12],g,kpg3[29:28],kpg4[29:28]);
mux4 mux37(k,kpg3[15:14],kpg3[15:14],g,kpg3[31:30],kpg4[31:30]);

reg s;
always@(kpg4)
begin
if(kpg4[31:30]==2'b00)
	assign s=0;
else if(kpg4[31:30]==2'b11)
	assign s=1;
end
endmodule