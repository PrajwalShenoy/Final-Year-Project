`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2020 23:44:01
// Design Name: 
// Module Name: neg_register16
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


module neg_register16(out, clk, load, in);
input clk, load;
input [15:0] in;
output[15:0] out;
wire n_clk;
notg n1(n_clk, clk);
register16 r1(out, n_clk, load, in);
endmodule
