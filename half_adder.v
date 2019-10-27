`timescale 1ns / 1ps

module half_adder(sum,carry,a,b);
	input a,b;
    output sum,carry;
    
    xorg xor1(sum,a,b);
    andg and1(carry,a,b);
endmodule