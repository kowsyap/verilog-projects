module pp24(a,c,p);
input[23:0] a;
input c;
output[23:0] p;

assign p[0]=a[0]&c;
assign p[1]=a[1]&c;
assign p[2]=a[2]&c;
assign p[3]=a[3]&c;
assign p[4]=a[4]&c;
assign p[5]=a[5]&c;
assign p[6]=a[6]&c;
assign p[7]=a[7]&c;
assign p[8]=a[8]&c;
assign p[9]=a[9]&c;
assign p[10]=a[10]&c;
assign p[11]=a[11]&c;
assign p[12]=a[12]&c;
assign p[13]=a[13]&c;
assign p[14]=a[14]&c;
assign p[15]=a[15]&c;
assign p[16]=a[16]&c;
assign p[17]=a[17]&c;
assign p[18]=a[18]&c;
assign p[19]=a[19]&c;
assign p[20]=a[20]&c;
assign p[21]=a[21]&c;
assign p[22]=a[22]&c;
assign p[23]=a[23]&c;


endmodule