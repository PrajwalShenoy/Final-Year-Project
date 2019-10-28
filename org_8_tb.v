`timescale 1ns / 1ps

module org_8_tb;
reg [7:0] in;
wire out;
org_8 o8(out, in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]);
initial begin
in = 8'b10000000; #5 
in = 8'b01000000; #5 
in = 8'b00100000; #5 
in = 8'b00010000; #5 
in = 8'b00001000; #5 
in = 8'b00000100; #5 
in = 8'b00000010; #5 
in = 8'b00000001; #5 
in = 8'b00000000; #5 
$finish;
end
endmodule