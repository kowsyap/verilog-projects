module xor3_16(a,b,c,d);
input[15:0] a,b,c;
output[15:0] d;

assign d[0] = a[0]^b[0]^c[0];
assign d[1] = a[1]^b[1]^c[1];
assign d[2] = a[2]^b[2]^c[2];
assign d[3] = a[3]^b[3]^c[3];
assign d[4] = a[4]^b[4]^c[4];
assign d[5] = a[5]^b[5]^c[5];
assign d[6] = a[6]^b[6]^c[6];
assign d[7] = a[7]^b[7]^c[7];
assign d[8] = a[8]^b[8]^c[8];
assign d[9] = a[9]^b[9]^c[9];
assign d[10] = a[10]^b[10]^c[10];
assign d[11] = a[11]^b[11]^c[11];
assign d[12] = a[12]^b[12]^c[12];
assign d[13] = a[13]^b[13]^c[13];
assign d[14] = a[14]^b[14]^c[14];
assign d[15] = a[15]^b[15]^c[15];

endmodule
