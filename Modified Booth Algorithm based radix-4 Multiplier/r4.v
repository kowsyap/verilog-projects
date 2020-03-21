module r4(x,y,z,k,m);
input signed[7:0]k; 
input x,y,z;
output reg signed[15:0]m;
wire[2:0] a;
assign a[2:0]={x,y,z};
always@(*)
begin
	if(a==3'b000 || a==3'b111)
		m <= 8'b0;
	else if(a==3'b001 || a==3'b010)
		m <= k;
	else if(a==3'b011)
		m <= k<<1;
	else if(a==3'b100)
		m <= -(k<<1);
	else if(a==3'b101 || a==3'b110)
		m <= -k;    
end
endmodule

	