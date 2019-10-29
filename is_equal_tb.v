`timescale 1ns / 1ps

module is_equal_tb();
reg [15:0] x,y;
wire out;
is_equal xor1(out,x,y);
initial begin
x= 16'd100; y=16'd100;#5
x= 16'd101; y=16'd100;#5
x= 16'd1; y=16'd2;#5
$finish;
end
endmodule
