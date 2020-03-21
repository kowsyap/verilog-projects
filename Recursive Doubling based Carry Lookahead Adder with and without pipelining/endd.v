`include "mx4.v"
module endd(s,sc,carry);
input s;
input[1:0] sc;
output carry;
wire x,y;
assign x=1'b0;
assign y=1'b1;

mx4 mxx(x,s,s,y,sc,carry);

endmodule
