`timescale 1ns / 1ps

module alu(out, zr, ng, x, y, zxnx, zyny, fno);
input [15:0] x,y;
input [1:0] zxnx, zyny,fno;

output [15:0] out;
output zr, ng;

wire [15:0] effective_x, effective_y, vdd, gnd;

assign vdd=16'b1111111111111111;
assign gnd=16'b0000000000000000;


wire [15:0] not_x, not_y, and_0, not_1, add_2, not_3;
wire temp;

not16 n1(not_x, x);
not16 n2(not_y, y);
not16 n3(not_1, and_0);
not16 n4(not_3, add_2);

and16 a1(and_0, effective_x, effective_y);


full_adder16 fa(add_2, temp, effective_x, effective_y, gnd);

mux16_4 m1(effective_x, zxnx, x, not_x, gnd, vdd);
mux16_4 m2(effective_y, zyny, y, not_y, gnd, vdd);
mux16_4 m3(out, fno, and_0, not_1, add_2, not_3);

wire to_mux_4, to_mux_5, high1, temp_ng;

is_equal e1(zr, out, gnd);
assign high1 = 1'b1;
xorg x1(temp_ng, out[15], high1);
notg ng1(ng, temp_ng);

endmodule
