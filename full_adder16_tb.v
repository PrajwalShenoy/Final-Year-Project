`timescale 1ns / 1ps

module full_adder16_tb;
reg [15:0] a, b;
reg cin;
wire carry;
wire [15:0] sum;
full_adder16 fa16(sum,carry,a,b,cin);
initial begin
a = 16'd100; b = 16'd1000; cin = 1'b1; #5
a = 16'd100; b = 16'd0; cin = 1'b1; #5
a = 16'b1111111111111111; b = 16'd0; cin = 1'b1; #5
a = 16'd64; b = 16'd36; cin = 1'b1; #5
$finish;
end
endmodule