`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2020 22:45:23
// Design Name: 
// Module Name: load
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


module load(load, j, zr, ng );
input zr, ng;
input [2:0]j;
output load;
wire not_zr, not_ng, and1, or1, or2 ;

notg n1(not_zr, zr);
notg n2(not_ng, ng);

andg a1(and1, not_zr, not_ng);

org o1(or1, zr, not_ng);
org o2(or2, zr, ng);

mux_8 m1(load, j, 0, and1, zr, or1, ng, not_zr, or2, 1);


endmodule
