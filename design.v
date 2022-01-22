// Code 
module buff(input [7:0] a,b, output reg [7:0] x);
  always@(*) begin
    x <= #5 (a | b);
  end
endmodule

module min(input [7:0] a,b, output [7:0] x);
  assign x = (a<b) ? a : b;
endmodule

module max(input [7:0] a,b, output [7:0] x);
  assign x = (a>b) ? a : b;
endmodule

module cf( input [7:0] i0,i1,i2,i3,i4,i5,i6,i7,i8, input [1:0]s, output [7:0] y);
  wire [7:0] y9, y10, y11, y12, y13, y14, y15, y16, y17;
  max x1(i1,i8,y9);
  max x2(i6,y9,y12);
  min x3(i4,i6,y10);
  min x4(i8,y11,y14);
  min x5(i3,y14,y17);
  min x6(y13,y14,y16);
  min x7(y12,y13,y15);
  
  buff x8(i2,i6,y11);
  buff x9(y10,y11,y13);
  
  assign y = s[1] ? y15 : (s[0] ? y16 : y17);
endmodule
