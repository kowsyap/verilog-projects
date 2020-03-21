//`include "mux4.v"

module kpg2_8(kpg1,kpg2);
input[15:0] kpg1;
output[15:0] kpg2;
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

endmodule