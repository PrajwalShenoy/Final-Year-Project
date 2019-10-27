`timescale 1ns / 1ps

module half_adder_tb;
 reg a,b;
 wire sum,carry;
 
 half_adder hadd(sum,carry,a,b);
 initial begin
 a=1'b0;b=1'b0;#5
 a=1'b0;b=1'b1;#5
 a=1'b1;b=1'b0;#5
 a=1'b1;b=1'b1;#5
 $finish;
 end
endmodule