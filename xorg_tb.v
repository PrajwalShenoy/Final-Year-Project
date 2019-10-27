`timescale 1ns / 1ps

module xorg_tb;
  reg a,b;
  wire out;
  
  xorg xor1(out,a,b);
  initial begin
    a=1'b0;b=1'b0;#5
	  a=1'b0;b=1'b1;#5
    a=1'b1;b=1'b0;#5
	  a=1'b1;b=1'b1;#5
	$finish;
   end
endmodule