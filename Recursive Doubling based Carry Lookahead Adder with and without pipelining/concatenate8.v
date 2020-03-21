module concatenate8(a,b,c,sc);
input[7:0] a,b;
output[15:0] c;
output[1:0] sc;

assign sc[1:0] = {a[7],b[7]};

assign c[1:0] =  2'b00;
assign c[3:2] = {a[0],b[0]};
assign c[5:4] = {a[1],b[1]};
assign c[7:6] = {a[2],b[2]};
assign c[9:8] = {a[3],b[3]};
assign c[11:10] = {a[4],b[4]};
assign c[13:12] = {a[5],b[5]};
assign c[15:14] = {a[6],b[6]};

endmodule
