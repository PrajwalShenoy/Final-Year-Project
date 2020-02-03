`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2020 12:36:55
// Design Name: 
// Module Name: decode_tb
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


module decode_tb;
 reg [15:0]  c;
 reg sel;
 
  wire [15:0] out;
  wire Asel;
  
  
  decode dec1(out,Asel,sel,c);
  initial begin
    sel=1'b0;c=16'b000000111111111;#5
	  sel=1'b0;c=16'b0101010101010101;#5
    sel=1'b1;c=16'b1110111111100000;#5
	  sel=1'b1;c=16'b11111000000001000;#5
	$finish;
   end
endmodule
