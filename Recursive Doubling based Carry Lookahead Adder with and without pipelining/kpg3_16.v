//`include "mux4.v"

module kpg3_16(kpg2,kpg3);
input[31:0] kpg2;
output[31:0] kpg3;
wire[1:0] k,g;

assign k=2'b00;
assign g=2'b11;

assign kpg3[1:0]=kpg2[1:0];
assign kpg3[3:2]=kpg2[3:2];
assign kpg3[5:4]=kpg2[5:4];
assign kpg3[7:6]=kpg2[7:6];
mux4 mux20(k,kpg2[1:0],kpg2[1:0],g,kpg2[9:8],kpg3[9:8]);
mux4 mux21(k,kpg2[3:2],kpg2[3:2],g,kpg2[11:10],kpg3[11:10]);
mux4 mux22(k,kpg2[5:4],kpg2[5:4],g,kpg2[13:12],kpg3[13:12]);
mux4 mux23(k,kpg2[7:6],kpg2[7:6],g,kpg2[15:14],kpg3[15:14]);
mux4 mux24(k,kpg2[9:8],kpg2[9:8],g,kpg2[17:16],kpg3[17:16]);
mux4 mux25(k,kpg2[11:10],kpg2[11:10],g,kpg2[19:18],kpg3[19:18]);
mux4 mux26(k,kpg2[13:12],kpg2[13:12],g,kpg2[21:20],kpg3[21:20]);
mux4 mux27(k,kpg2[15:14],kpg2[15:14],g,kpg2[23:22],kpg3[23:22]);
mux4 mux28(k,kpg2[17:16],kpg2[17:16],g,kpg2[25:24],kpg3[25:24]);
mux4 mux29(k,kpg2[19:18],kpg2[19:18],g,kpg2[27:26],kpg3[27:26]);
mux4 mux210(k,kpg2[21:20],kpg2[21:20],g,kpg2[29:28],kpg3[29:28]);
mux4 mux211(k,kpg2[23:22],kpg2[23:22],g,kpg2[31:30],kpg3[31:30]);


reg s;
always@(kpg3)
begin
if(kpg3[15:14]==2'b00)
	assign s=0;
else if(kpg3[15:14]==2'b11)
	assign s=1;
end
endmodule