// testbench code

module tb;
  reg [7:0]i0,i1,i2,i3,i4,i5,i6,i7,i8;
  reg [1:0]s;
  wire [7:0]y;
  cf dut(i0,i1,i2,i3,i4,i5,i6,i7,i8,s,y);
  initial begin
    repeat(10)begin
      {i0,i1,i2,i3} = $random;
      {i4,i5,i6,i7} = $random;
      i8= $random;
      s = $random;
      $display("i0 = %d,i1=%d, i2=%d, i3=%d, i4=%d, i5=%d, i6=%d, i7=%d, i8=%d, s=%d, y=%d",i0,i1,i2,i3,i4,i5,i6,i7,i8,s,y);
    end
  end
endmodule
