`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.10.2019 17:21:21
// Design Name: 
// Module Name: andg
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


module andg(out,x,y);
input x,y ;
output out;
wire p,q,vdd,gnd;
assign vdd=1'b1;
assign gnd=1'b0;
pmos p1(q,vdd,x);
pmos p2(q,vdd,y);
pmos p3(out,vdd,q);
nmos n1(q,p,x);
nmos n2(p,gnd,y);
nmos n3(out,gnd,q);
endmodule