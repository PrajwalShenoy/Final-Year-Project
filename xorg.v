 
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

module xorg(out,a,b);
  input a,b;
  output out;
  wire a1,b1,x,y;
  
  notg not_gate(a1,a);
  notg not_gate1(b1,b);
  andg and1(x,a1,b);
  andg and2(y,a,b1);
  org  or1(out,x,y);
  
endmodule
