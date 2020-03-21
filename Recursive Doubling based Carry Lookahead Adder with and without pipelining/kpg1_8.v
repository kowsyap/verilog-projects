`include "mux4.v"

module kpg1_8(conc,kpg1);
input[15:0] conc;
output[15:0] kpg1;
wire[1:0] k,g;

assign k=2'b00;
assign g=2'b11;

assign kpg1[1:0]=conc[1:0];
mux4 mux00(k,conc[1:0],conc[1:0],g,conc[3:2],kpg1[3:2]);
mux4 mux01(k,conc[3:2],conc[3:2],g,conc[5:4],kpg1[5:4]);
mux4 mux02(k,conc[5:4],conc[5:4],g,conc[7:6],kpg1[7:6]);
mux4 mux03(k,conc[7:6],conc[7:6],g,conc[9:8],kpg1[9:8]);
mux4 mux04(k,conc[9:8],conc[9:8],g,conc[11:10],kpg1[11:10]);
mux4 mux05(k,conc[11:10],conc[11:10],g,conc[13:12],kpg1[13:12]);
mux4 mux06(k,conc[13:12],conc[13:12],g,conc[15:14],kpg1[15:14]);

endmodule