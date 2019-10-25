`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 17:37:25
// Design Name: 
// Module Name: org
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


module org(out, a, b);
input a,b;
output out;
wire vdd, gnd;
wire q, r;
assign vdd = 1'b1;
assign gnd = 1'b0;
pmos p1(q,vdd,a);
pmos p2(r,q,b);
pmos p3(out,vdd,r);
nmos n1(r,gnd,a);
nmos n2(r,gnd,b);
nmos n3(out,gnd,r);
endmodule
