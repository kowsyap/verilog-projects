`include "rcas9.v"
`include "rca24.v"


module addf32(a,b,sum);
input[31:0] a,b;
integer l;
output reg[31:0] sum;
wire [23:0] a1,b1,a3,b3,rm,rmmx,rmm;
reg[23:0] rmm1,rmm2,rmm3,rmm4,rmm5,rmm6,rmm7,rmm8,rmm9,rmm10,rmm11,rmm12,rmm13,rmm14,rmm15,rmm16,rmm17,rmm18,rmm19,rmm20,rmm21,rmm22,rmm23;
reg[23:0] a2,b2;
reg[7:0] ae111,be111,ae1,ae2,ae3,ae4,ae5,ae6,ae7,ae8,ae9,ae10,ae11,ae12,ae13,ae14,ae15,ae16,ae17,ae18,ae19,ae20,ae21,ae22,ae23;
wire[8:0] ae,be,diff,diff1;
wire c,co;

assign a1[23:0] = {1'b1,a[22:0]};
assign b1[23:0] = {1'b1,b[22:0]};
assign ae[8:0] = {1'b0,a[30:23]};//ae
assign be[8:0] = {1'b0,b[30:23]};//be
rcas9 rss(ae[8:0],be[8:0],1'b1,diff[8:0],cx); //ae-be
rcas9 rss1(be[8:0],ae[8:0],1'b1,diff1[8:0],cy); //be-ae

always@(*)
begin
	if(ae>be)
		begin
		b2  <= b1>>diff[7:0];
		a2  <= a1;
		ae111 <= ae[7:0];
		be111 <= ae[7:0];
		end
	else if(ae<be)
		begin
		a2  <= a1>>diff1[7:0];
		b2  <= b1;
		ae111 <= be[7:0];
		be111 <= be[7:0];
		end
	else
		begin
		a2  <= a1;
		b2  <= b1;
		ae111 <= ae[7:0];
		be111 <= be[7:0];
		end
end
rca24 rrre(a2,b2,rm,c);
assign a3 = a2;
assign b3 = ~b2+1;
rca24 rrre1(a3,b3,rmm,co);
assign rmmx = ~rmm+1;
always@(*)
begin
	if(a[31]^b[31]==1'b0)
		begin
		sum[31]  <= a[31];
		if(c==1'b0)
			begin
			sum[30:23]  <= ae111;
			sum[22:0] <= rm[22:0];
			end
		else if(c==1'b1)
			begin
			sum[30:23]  <= ae111+1;
			sum[22:0] <= rm[23:1];
			end
		end
	else if(a[31]^b[31]==1'b1)
		begin
		if(co==1'b1)
			begin
			sum[31] <= a[31];
			if(rmm[23]==1'b0)
				begin
				rmm1<= rmm<<1'b1;
				ae1 <= ae111-1'b1;
				end
			else
				begin
				rmm1 <= rmm;
				ae1 <= ae111;
				end
				
			if(rmm1[23]==1'b0)
				begin
				rmm2<= rmm1<<1'b1;
				ae2 <= ae1-1'b1;
				end
			else
				begin
				rmm2 <= rmm1;
				ae2 <= ae1;
				end
			if(rmm2[23]==1'b0)
				begin
				rmm3<= rmm2<<1'b1;
				ae3 <= ae2-1'b1;
				end
			else
				begin
				rmm3 <= rmm2;
				ae3 <= ae2;
				end
			if(rmm3[23]==1'b0)
				begin
				rmm4<= rmm3<<1'b1;
				ae4 <= ae3-1'b1;
				end
			else
				begin
				rmm4 <= rmm3;
				ae4 <= ae3;
				end
			if(rmm4[23]==1'b0)
				begin
				rmm5<= rmm4<<1'b1;
				ae5<= ae4-1'b1;
				end
			else
				begin
				rmm5 <= rmm4;
				ae5 <= ae4;
				end
			if(rmm5[23]==1'b0)
				begin
				rmm6<= rmm5<<1'b1;
				ae6 <= ae5-1'b1;
				end
			else
				begin
				rmm6 <= rmm5;
				ae6 <= ae5;
				end
			if(rmm6[23]==1'b0)
				begin
				rmm7<= rmm6<<1'b1;
				ae7 <= ae6-1'b1;
				end
			else
				begin
				rmm7 <= rmm6;
				ae7 <= ae6;
				end
			if(rmm7[23]==1'b0)
				begin
				rmm8<= rmm7<<1'b1;
				ae8 <= ae7-1'b1;
				end
			else
				begin
				rmm8 <= rmm7;
				ae8 <= ae7;
				end
			if(rmm8[23]==1'b0)
				begin
				rmm9<= rmm8<<1'b1;
				ae9 <= ae8-1'b1;
				end
			else
				begin
				rmm9 <= rmm8;
				ae9 <= ae8;
				end
			if(rmm9[23]==1'b0)
				begin
				rmm10<= rmm9<<1'b1;
				ae10 <= ae9-1'b1;
				end
			else
				begin
				rmm10<= rmm9;
				ae10<= ae9;
				end
			if(rmm10[23]==1'b0)
				begin
				rmm11<= rmm10<<1'b1;
				ae11<= ae10-1'b1;
				end
			else
				begin
				rmm11 <= rmm10;
				ae11<= ae10;
				end
			if(rmm11[23]==1'b0)
				begin
				rmm12<= rmm11<<1'b1;
				ae12<= ae11-1'b1;
				end
			else
				begin
				rmm12 <= rmm11;
				ae12<= ae11;
				end
			if(rmm12[23]==1'b0)
				begin
				rmm13<= rmm12<<1'b1;
				ae13<= ae12-1'b1;
				end
			else
				begin
				rmm13 <= rmm12;
				ae13<= ae12;
				end
			if(rmm13[23]==1'b0)
				begin
				rmm14<= rmm13<<1'b1;
				ae14<= ae13-1'b1;
				end
			else
				begin
				rmm14 <= rmm13;
				ae14<= ae13;
				end
			if(rmm14[23]==1'b0)
				begin
				rmm15<= rmm14<<1'b1;
				ae15<= ae14-1'b1;
				end
			else
				begin
				rmm15 <= rmm14;
				ae15<= ae14;
				end
			if(rmm15[23]==1'b0)
				begin
				rmm16<= rmm15<<1'b1;
				ae16<= ae15-1'b1;
				end
			else
				begin
				rmm16 <= rmm15;
				ae16<= ae15;
				end
			if(rmm16[23]==1'b0)
				begin
				rmm17<= rmm16<<1'b1;
				ae17<= ae16-1'b1;
				end
			else
				begin
				rmm17 <= rmm16;
				ae17<= ae16;
				end
			if(rmm17[23]==1'b0)
				begin
				rmm18<= rmm17<<1'b1;
				ae18<= ae17-1'b1;
				end
			else
				begin
				rmm18 <= rmm17;
				ae18<= ae17;
				end
			if(rmm18[23]==1'b0)
				begin
				rmm19<= rmm18<<1'b1;
				ae19<= ae18-1'b1;
				end
			else
				begin
				rmm19 <= rmm18;
				ae19<= ae18;
				end
			if(rmm19[23]==1'b0)
				begin
				rmm20<= rmm18<<1'b1;
				ae20<= ae19-1'b1;
				end
			else
				begin
				rmm20 <= rmm19;
				ae20<= ae19;
				end
			if(rmm20[23]==1'b0)
				begin
				rmm21<= rmm20<<1'b1;
				ae21<= ae20-1'b1;
				end
			else
				begin
				rmm21 <= rmm20;
				ae21<= ae20;
				end
			if(rmm21[23]==1'b0)
				begin
				rmm22<= rmm21<<1'b1;
				ae22<= ae21-1'b1;
				end
			else
				begin
				rmm22 <= rmm21;
				ae22<= ae21;
				end
			if(rmm22[23]==1'b0)
				begin
				rmm23<= rmm22<<1'b1;
				ae23<= ae22-1'b1;
				end
			else
				begin
				rmm23 <= rmm22;
				ae23<= ae22;
				end
			sum[22:0] <= rmm23;
			sum[30:23]  <= ae23;
			end
		else if(co==1'b0)
			begin
			sum[31] <= b[31];
			if(rmmx[23]==1'b0)
				begin
				rmm1<= rmmx<<1'b1;
				ae1 <= ae111-1'b1;
				end
			else
				begin
				rmm1 <= rmm;
				ae1 <= ae111;
				end
				
			if(rmm1[23]==1'b0)
				begin
				rmm2<= rmm1<<1'b1;
				ae2 <= ae1-1'b1;
				end
			else
				begin
				rmm2 <= rmm1;
				ae2 <= ae1;
				end
			if(rmm2[23]==1'b0)
				begin
				rmm3<= rmm2<<1'b1;
				ae3 <= ae2-1'b1;
				end
			else
				begin
				rmm3 <= rmm2;
				ae3 <= ae2;
				end
			if(rmm3[23]==1'b0)
				begin
				rmm4<= rmm3<<1'b1;
				ae4 <= ae3-1'b1;
				end
			else
				begin
				rmm4 <= rmm3;
				ae4 <= ae3;
				end
			if(rmm4[23]==1'b0)
				begin
				rmm5<= rmm4<<1'b1;
				ae5<= ae4-1'b1;
				end
			else
				begin
				rmm5 <= rmm4;
				ae5 <= ae4;
				end
			if(rmm5[23]==1'b0)
				begin
				rmm6<= rmm5<<1'b1;
				ae6 <= ae5-1'b1;
				end
			else
				begin
				rmm6 <= rmm5;
				ae6 <= ae5;
				end
			if(rmm6[23]==1'b0)
				begin
				rmm7<= rmm6<<1'b1;
				ae7 <= ae6-1'b1;
				end
			else
				begin
				rmm7 <= rmm6;
				ae7 <= ae6;
				end
			if(rmm7[23]==1'b0)
				begin
				rmm8<= rmm7<<1'b1;
				ae8 <= ae7-1'b1;
				end
			else
				begin
				rmm8 <= rmm7;
				ae8 <= ae7;
				end
			if(rmm8[23]==1'b0)
				begin
				rmm9<= rmm8<<1'b1;
				ae9 <= ae8-1'b1;
				end
			else
				begin
				rmm9 <= rmm8;
				ae9 <= ae8;
				end
			if(rmm9[23]==1'b0)
				begin
				rmm10<= rmm9<<1'b1;
				ae10 <= ae9-1'b1;
				end
			else
				begin
				rmm10<= rmm9;
				ae10<= ae9;
				end
			if(rmm10[23]==1'b0)
				begin
				rmm11<= rmm10<<1'b1;
				ae11<= ae10-1'b1;
				end
			else
				begin
				rmm11 <= rmm10;
				ae11<= ae10;
				end
			if(rmm11[23]==1'b0)
				begin
				rmm12<= rmm11<<1'b1;
				ae12<= ae11-1'b1;
				end
			else
				begin
				rmm12 <= rmm11;
				ae12<= ae11;
				end
			if(rmm12[23]==1'b0)
				begin
				rmm13<= rmm12<<1'b1;
				ae13<= ae12-1'b1;
				end
			else
				begin
				rmm13 <= rmm12;
				ae13<= ae12;
				end
			if(rmm13[23]==1'b0)
				begin
				rmm14<= rmm13<<1'b1;
				ae14<= ae13-1'b1;
				end
			else
				begin
				rmm14 <= rmm13;
				ae14<= ae13;
				end
			if(rmm14[23]==1'b0)
				begin
				rmm15<= rmm14<<1'b1;
				ae15<= ae14-1'b1;
				end
			else
				begin
				rmm15 <= rmm14;
				ae15<= ae14;
				end
			if(rmm15[23]==1'b0)
				begin
				rmm16<= rmm15<<1'b1;
				ae16<= ae15-1'b1;
				end
			else
				begin
				rmm16 <= rmm15;
				ae16<= ae15;
				end
			if(rmm16[23]==1'b0)
				begin
				rmm17<= rmm16<<1'b1;
				ae17<= ae16-1'b1;
				end
			else
				begin
				rmm17 <= rmm16;
				ae17<= ae16;
				end
			if(rmm17[23]==1'b0)
				begin
				rmm18<= rmm17<<1'b1;
				ae18<= ae17-1'b1;
				end
			else
				begin
				rmm18 <= rmm17;
				ae18<= ae17;
				end
			if(rmm18[23]==1'b0)
				begin
				rmm19<= rmm18<<1'b1;
				ae19<= ae18-1'b1;
				end
			else
				begin
				rmm19 <= rmm18;
				ae19<= ae18;
				end
			if(rmm19[23]==1'b0)
				begin
				rmm20<= rmm18<<1'b1;
				ae20<= ae19-1'b1;
				end
			else
				begin
				rmm20 <= rmm19;
				ae20<= ae19;
				end
			if(rmm20[23]==1'b0)
				begin
				rmm21<= rmm20<<1'b1;
				ae21<= ae20-1'b1;
				end
			else
				begin
				rmm21 <= rmm20;
				ae21<= ae20;
				end
			if(rmm21[23]==1'b0)
				begin
				rmm22<= rmm21<<1'b1;
				ae22<= ae21-1'b1;
				end
			else
				begin
				rmm22 <= rmm21;
				ae22<= ae21;
				end
			if(rmm22[23]==1'b0)
				begin
				rmm23<= rmm22<<1'b1;
				ae23<= ae22-1'b1;
				end
			else
				begin
				rmm23 <= rmm22;
				ae23<= ae22;
				end
			sum[22:0] <= rmm23;
			sum[30:23]  <= ae23;
			end
		end
end
endmodule