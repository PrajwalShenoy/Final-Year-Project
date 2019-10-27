`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 17:32:17
// Design Name: 
// Module Name: andg_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module xor_tb;
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
