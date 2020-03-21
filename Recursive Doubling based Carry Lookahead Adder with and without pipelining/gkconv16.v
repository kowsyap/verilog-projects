`include "sel.v"

module gkconv16(a,c);

input[31:0] a;
output[15:0] c;

sel sel0(a[1:0],c[0]);
sel sel1(a[3:2],c[1]);
sel sel2(a[5:4],c[2]);
sel sel3(a[7:6],c[3]);
sel sel4(a[9:8],c[4]);
sel sel5(a[11:10],c[5]);
sel sel6(a[13:12],c[6]);
sel sel7(a[15:14],c[7]);
sel sel8(a[17:16],c[8]);
sel sel9(a[19:18],c[9]);
sel sel10(a[21:20],c[10]);
sel sel11(a[23:22],c[11]);
sel sel12(a[25:24],c[12]);
sel sel13(a[27:26],c[13]);
sel sel14(a[29:28],c[14]);
sel sel15(a[31:30],c[15]);

endmodule