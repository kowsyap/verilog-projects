`include "sel.v"

module gkconv(a,c);

input[15:0] a;
output[7:0] c;

sel sel0(a[1:0],c[0]);
sel sel1(a[3:2],c[1]);
sel sel2(a[5:4],c[2]);
sel sel3(a[7:6],c[3]);
sel sel4(a[9:8],c[4]);
sel sel5(a[11:10],c[5]);
sel sel6(a[13:12],c[6]);
sel sel7(a[15:14],c[7]);

endmodule