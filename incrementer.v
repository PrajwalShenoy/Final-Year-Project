 
`timescale 1ns / 1ps

module incrementer(out,in);
  input [15:0]in;
  output [15:0]out;
  wire [15:0]x;
  wire y;
  assign x = 16'd1;
  full_adder16 fadd(out,y,in,x);
  
  endmodule
  
