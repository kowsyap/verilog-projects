//`include "mux4.v"

module kpg2_16(kpg1,kpg2);
input[31:0] kpg1;
output[31:0] kpg2;
wire[1:0] k,g;

assign k=2'b00;
assign g=2'b11;

assign kpg2[1:0]=kpg1[1:0];
assign kpg2[3:2]=kpg1[3:2];
mux4 mux10(k,kpg1[1:0],kpg1[1:0],g,kpg1[5:4],kpg2[5:4]);
mux4 mux11(k,kpg1[3:2],kpg1[3:2],g,kpg1[7:6],kpg2[7:6]);
mux4 mux12(k,kpg1[5:4],kpg1[5:4],g,kpg1[9:8],kpg2[9:8]);
mux4 mux13(k,kpg1[7:6],kpg1[7:6],g,kpg1[11:10],kpg2[11:10]);
mux4 mux14(k,kpg1[9:8],kpg1[9:8],g,kpg1[13:12],kpg2[13:12]);
mux4 mux15(k,kpg1[11:10],kpg1[11:10],g,kpg1[15:14],kpg2[15:14]);
mux4 mux16(k,kpg1[13:12],kpg1[13:12],g,kpg1[17:16],kpg2[17:16]);
mux4 mux17(k,kpg1[15:14],kpg1[15:14],g,kpg1[19:18],kpg2[19:18]);
mux4 mux18(k,kpg1[17:16],kpg1[17:16],g,kpg1[21:20],kpg2[21:20]);
mux4 mux19(k,kpg1[19:18],kpg1[19:18],g,kpg1[23:22],kpg2[23:22]);
mux4 mux110(k,kpg1[21:20],kpg1[21:20],g,kpg1[25:24],kpg2[25:24]);
mux4 mux111(k,kpg1[23:22],kpg1[23:22],g,kpg1[27:26],kpg2[27:26]);
mux4 mux112(k,kpg1[25:24],kpg1[25:24],g,kpg1[29:28],kpg2[29:28]);
mux4 mux113(k,kpg1[27:26],kpg1[27:26],g,kpg1[31:30],kpg2[31:30]);

endmodule