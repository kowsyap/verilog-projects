`include "fulladder.v"

module rcas9(a,a1,d,ans,carry);

input[8:0] a,a1;
input d;
output[8:0] ans;
output carry;
wire[8:0] c;
reg[8:0] b;
always@(*)
	begin
		if(d==1'b0)
			b<=a1;
		else
			b<=~a1;
	end
fulladder fa00(a[0],b[0],d,ans[0],c[0]);
fulladder fa0(a[1],b[1],c[0],ans[1],c[1]);
fulladder fa1(a[2],b[2],c[1],ans[2],c[2]);
fulladder fa2(a[3],b[3],c[2],ans[3],c[3]);
fulladder fa3(a[4],b[4],c[3],ans[4],c[4]);
fulladder fa4(a[5],b[5],c[4],ans[5],c[5]);
fulladder fa5(a[6],b[6],c[5],ans[6],c[6]);
fulladder fa6(a[7],b[7],c[6],ans[7],c[7]);
fulladder fa7(a[8],b[8],c[7],ans[8],c[8]);


assign carry = c[8];

endmodule