`timescale 1ns / 1ps

module full_adder(sum,carry,a,b,cin);
input a,b,cin;
output sum,carry;
wire x,y,x1;  
half_adder hadd(x,y,a,b); 
half_adder hadd1(sum,x1,x,cin);
org or1(carry,y,x1);
    
endmodule