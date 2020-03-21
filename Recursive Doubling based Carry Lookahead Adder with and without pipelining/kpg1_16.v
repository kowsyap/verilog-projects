`include "mux4.v"

module kpg1_16(conc,kpg1);
input[31:0] conc;
output[31:0] kpg1;
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
mux4 mux07(k,conc[15:14],conc[15:14],g,conc[17:16],kpg1[17:16]);
mux4 mux08(k,conc[17:16],conc[17:16],g,conc[19:18],kpg1[19:18]);
mux4 mux09(k,conc[19:18],conc[19:18],g,conc[21:20],kpg1[21:20]);
mux4 mux010(k,conc[21:20],conc[21:20],g,conc[23:22],kpg1[23:22]);
mux4 mux011(k,conc[23:22],conc[23:22],g,conc[25:24],kpg1[25:24]);
mux4 mux012(k,conc[25:24],conc[25:24],g,conc[27:26],kpg1[27:26]);
mux4 mux013(k,conc[27:26],conc[27:26],g,conc[29:28],kpg1[29:28]);
mux4 mux014(k,conc[29:28],conc[29:28],g,conc[31:30],kpg1[31:30]);

endmodule