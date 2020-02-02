`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.02.2020 23:53:16
// Design Name: 
// Module Name: load_tb
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


module load_tb;
reg [2:0]j;
reg zr, ng;
wire load;
load load1(load, j, zr, ng);
initial begin
zr=0; ng=0; j = 3'b000; #5
zr=0; ng=0; j = 3'b001; #5
zr=0; ng=0; j = 3'b010; #5
zr=0; ng=0; j = 3'b011; #5
zr=0; ng=0; j = 3'b100; #5
zr=0; ng=0; j = 3'b101; #5
zr=0; ng=0; j = 3'b110; #5
zr=0; ng=0; j = 3'b111; #5

zr=0; ng=1; j = 3'b000; #5
zr=0; ng=1; j = 3'b001; #5
zr=0; ng=1; j = 3'b010; #5
zr=0; ng=1; j = 3'b011; #5
zr=0; ng=1; j = 3'b100; #5
zr=0; ng=1; j = 3'b101; #5
zr=0; ng=1; j = 3'b110; #5
zr=0; ng=1; j = 3'b111; #5
$finish;
end
endmodule