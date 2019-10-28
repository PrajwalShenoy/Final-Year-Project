`timescale 1ns / 1ps

module incrementer(out,in);
input [15:0]in;
output [15:0]out;
wire cin;
wire [15:0] x;
wire y;
assign cin = 1'b1;
assign x = 16'd0;
full_adder16 fadd(out,y,in,x, cin);
endmodule