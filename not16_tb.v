`timescale 1ns / 1ps

module not16_tb;
reg [15:0] in;
wire [15:0] out;
not16 not_gate_16(out, in);
initial begin
in = 16'b1111111111111111;#5
in = 16'b0000000000000000;#5
$finish;
end
endmodule