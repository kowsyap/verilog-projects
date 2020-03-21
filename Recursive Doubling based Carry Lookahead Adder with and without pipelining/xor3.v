module xor3(a,b,c,d);
input[7:0] a,b,c;
output[7:0] d;

assign d[0] = a[0]^b[0]^c[0];
assign d[1] = a[1]^b[1]^c[1];
assign d[2] = a[2]^b[2]^c[2];
assign d[3] = a[3]^b[3]^c[3];
assign d[4] = a[4]^b[4]^c[4];
assign d[5] = a[5]^b[5]^c[5];
assign d[6] = a[6]^b[6]^c[6];
assign d[7] = a[7]^b[7]^c[7];

endmodule
