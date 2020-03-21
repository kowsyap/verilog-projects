module bs8(a,sel,dir,out);
//8 bit barrel shifter
input [7:0] a;
input [2:0] sel;
input dir;
output[7:0] out;

reg[3:0] s;

always@(*)
begin
if (dir==1'b1)
	s<=sel+8;
else
	s<={1'b0,sel};
end

mux16 m0(a[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7],s,out[0]);
mux16 m1(a[1],a[0],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,a[1],a[2],a[3],a[4],a[5],a[6],a[7],1'b0,s,out[1]);
mux16 m2(a[2],a[1],a[0],1'b0,1'b0,1'b0,1'b0,1'b0,a[2],a[3],a[4],a[5],a[6],a[7],1'b0,1'b0,s,out[2]);
mux16 m3(a[3],a[2],a[1],a[0],1'b0,1'b0,1'b0,1'b0,a[3],a[4],a[5],a[6],a[7],1'b0,1'b0,1'b0,s,out[3]);
mux16 m4(a[4],a[3],a[2],a[1],a[0],1'b0,1'b0,1'b0,a[4],a[5],a[6],a[7],1'b0,1'b0,1'b0,1'b0,s,out[4]);
mux16 m5(a[5],a[4],a[3],a[2],a[1],a[0],1'b0,1'b0,a[5],a[6],a[7],1'b0,1'b0,1'b0,1'b0,1'b0,s,out[5]);
mux16 m6(a[6],a[5],a[4],a[3],a[2],a[1],a[0],1'b0,a[6],a[7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s,out[6]);
mux16 m7(a[7],a[6],a[5],a[4],a[3],a[2],a[1],a[0],a[7],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s,out[7]);

endmodule