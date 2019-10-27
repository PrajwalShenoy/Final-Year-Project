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

//2 half adder model of full adder sum= a^b^cin carry = (a^b).cin+a.b
module full_adder(sum,carry.a,b,cin);
	input a,b,cin;
    output sum,carry;
    wire x,y,x1;
    
    half_adder hadd(x,y,a,b); //x = a^b y= a.b 
    half_adder hadd1(sum,x1,x,cin);// sum =x^cin x1=x. cin
    org        or1(carry,y,x1);
    
endmodule
