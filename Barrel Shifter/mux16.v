module mux16(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,s,out);
input a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p;
input[3:0] s;
output reg out;

always@(*)
begin

if(s==4'b0000)
	assign out=a;
else if(s==4'b0001)
	assign out=b;
else if(s==4'b0010)
	assign out=c;
else if(s==4'b0011)
	assign out=d;
else if(s==4'b0100)
	assign out=e;
else if(s==4'b0101)
	assign out=f;
else if(s==4'b0110)
	assign out=g;
else if(s==4'b0111)
	assign out=h;
else if(s==4'b1000)
	assign out=i;
else if(s==4'b1001)
	assign out=j;
else if(s==4'b1010)
	assign out=k;
else if(s==4'b1011)
	assign out=l;
else if(s==4'b1100)
	assign out=m;
else if(s==4'b1101)
	assign out=n;
else if(s==4'b1110)
	assign out=o;
else if(s==4'b1111)
	assign out=p;
	
end
endmodule