`timescale 1ns / 1ps

module full_adder16(sum,carry,a,b,cin);
input [15:0]a,b;
input cin;
output [15:0]sum;
output carry;
wire cout[14:0];
full_adder fass0(sum[0],cout[0],a[0], b[0], cin);
full_adder fass1(sum[1],cout[1],a[1], b[1], cout[0]);
full_adder fass2(sum[2],cout[2],a[2], b[2], cout[1]);
full_adder fass3(sum[3],cout[3],a[3], b[3], cout[2]);
full_adder fass4(sum[4],cout[4],a[4], b[4], cout[3]);
full_adder fass5(sum[5],cout[5],a[5], b[5], cout[4]);
full_adder fass6(sum[6],cout[6],a[6], b[6], cout[5]);
full_adder fass7(sum[7],cout[7],a[7], b[7], cout[6]);
full_adder fass8(sum[8],cout[8],a[8], b[8], cout[7]);
full_adder fass9(sum[9],cout[9],a[9], b[9], cout[8]);
full_adder fass10(sum[10],cout[10],a[10], b[10], cout[9]);
full_adder fass11(sum[11],cout[11],a[11], b[11], cout[10]);
full_adder fass12(sum[12],cout[12],a[12], b[12], cout[11]);
full_adder fass13(sum[13],cout[13],a[13], b[13], cout[12]);
full_adder fass14(sum[14],cout[14],a[14], b[14], cout[13]);
full_adder fass15(sum[15],carry,a[15], b[15], cout[14]);
endmodule

