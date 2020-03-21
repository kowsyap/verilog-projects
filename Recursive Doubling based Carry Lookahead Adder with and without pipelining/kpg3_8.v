//`include "mux4.v"

module kpg3_8(kpg2,kpg3,s);
input[15:0] kpg2;
output[15:0] kpg3;
output s;
wire[1:0] k,g;

assign k=2'b00;
assign g=2'b11;

assign kpg3[1:0]=kpg2[1:0];
assign kpg3[3:2]=kpg2[3:2];
assign kpg3[5:4]=kpg2[5:4];
assign kpg3[7:6]=kpg2[7:6];
mux4 mux20(k,kpg2[1:0],kpg2[1:0],g,kpg2[9:8],kpg3[9:8]);
mux4 mux21(k,kpg2[3:2],kpg2[3:2],g,kpg2[11:10],kpg3[11:10]);
mux4 mux22(k,kpg2[5:4],kpg2[5:4],g,kpg2[13:12],kpg3[13:12]);
mux4 mux23(k,kpg2[7:6],kpg2[7:6],g,kpg2[15:14],kpg3[15:14]);

reg s;
always@(kpg3)
begin
if(kpg3[15:14]==2'b00)
	assign s=0;
else if(kpg3[15:14]==2'b11)
	assign s=1;
end
endmodule