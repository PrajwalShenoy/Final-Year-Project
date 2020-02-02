`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.02.2020 14:40:55
// Design Name: 
// Module Name: decode
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


module decode(out,Asel,sel,a,c);
input [15:0] a, c;
input sel;

output [15:0] out;
output Asel;


wire inst5,sel20,sel21,sel2;


mux16 m0(out, sel, 16'b0000010001010000, c);
dmux d0(sel20,sel21,sel,out[5]);
notg n0(sel2,sel20);
mux m1(Asel,sel,sel2,sel21);



endmodule
