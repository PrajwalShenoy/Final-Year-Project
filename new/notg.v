`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.10.2019 01:04:10
// Design Name: 
// Module Name: notg
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


module notg(out, in);
input in;
output out;
wire vdd, gnd;
assign vdd = 1'b1;
assign gnd = 1'b0;
pmos p1(out, vdd, in);
nmos n1(out, gnd, in);
endmodule
