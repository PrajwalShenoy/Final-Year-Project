`timescale 1ns / 1ps

module full_adder_tb;
 reg a,b,cin;
 wire sum,carry;
 
 full_adder fadd(sum,carry,a,b,cin);
 initial begin
 
 a=1'b0;b=1'b0;cin=1'b0;#5
 a=1'b0;b=1'b0;cin=1'b1;#5
 a=1'b0;b=1'b1;cin=1'b0;#5
 a=1'b0;b=1'b1;cin=1'b1;#5
 a=1'b1;b=1'b0;cin=1'b0;#5
 a=1'b1;b=1'b0;cin=1'b1;#5
 a=1'b1;b=1'b1;cin=1'b0;#5
 a=1'b1;b=1'b1;cin=1'b1;#5
 $finish;
 end
endmodule