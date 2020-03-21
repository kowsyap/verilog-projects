module concatenate16(a,b,c,sc);
input[15:0] a,b;
output[31:0] c;
output[1:0] sc;

assign sc[1:0] = {a[15],b[15]};

assign c[1:0] =  2'b00;
assign c[3:2] = {a[0],b[0]};
assign c[5:4] = {a[1],b[1]};
assign c[7:6] = {a[2],b[2]};
assign c[9:8] = {a[3],b[3]};
assign c[11:10] = {a[4],b[4]};
assign c[13:12] = {a[5],b[5]};
assign c[15:14] = {a[6],b[6]};
assign c[17:16] = {a[7],b[7]};
assign c[19:18] = {a[8],b[8]};
assign c[21:20] = {a[9],b[9]};
assign c[23:22] = {a[10],b[10]};
assign c[25:24] = {a[11],b[11]};
assign c[27:26] = {a[12],b[12]};
assign c[29:28] = {a[13],b[13]};
assign c[31:30] = {a[14],b[14]};

endmodule
