module pp8(a,c,p);
input[7:0] a;
input c;
output[7:0] p;

assign p[0]=a[0]&c;
assign p[1]=a[1]&c;
assign p[2]=a[2]&c;
assign p[3]=a[3]&c;
assign p[4]=a[4]&c;
assign p[5]=a[5]&c;
assign p[6]=a[6]&c;
assign p[7]=a[7]&c;

endmodule