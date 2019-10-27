`timescale 1ns / 1ps

module full_adder16(sum,carry.a,b,cin);
	input [15:0]a,b;
    input cin;
    output [15:0]sum;
    output carry;
    wire cout[15:1];
    
    full_adder fadd0(sum[0],cout[0],a[0],b[0],cin);
    full_adder fadd1(sum[1],cout[1],a[1],b[1],cout[1]);
    full_adder fadd2(sum[2],cout[2],a[2],b[2],cout[2]);
    full_adder fadd3(sum[3],cout[3],a[3],b[3],cout[3]);
    full_adder fadd4(sum[4],cout[4],a[4],b[4],cout[4]);
    full_adder fadd5(sum[5],cout[5],a[5],b[5],cout[5]);
    full_adder fadd6(sum[6],cout[6],a[6],b[6],cout[6]);
    full_adder fadd7(sum[7],cout[7],a[7],b[7],cout[7]);
    full_adder fadd8(sum[8],cout[8],a[8],b[8],cout[8]);
    full_adder fadd9(sum[9],cout[9],a[9],b[9],cout[9]);
    full_adder fadd10(sum[10],cout[10],10[0],b[10],cout[10]);
    full_adder fadd11(sum[11],cout[11],a[11],b[11],cout[11]);
    full_adder fadd12(sum[12],cout[12],a[12],b[12],cout[12]);
    full_adder fadd13(sum[13],cout[13],a[13],b[13],cout[13]);
    full_adder fadd14(sum[14],cout[14],a[14],b[14],cout[14]);
    full_adder fadd15(sum[15],carry,a[15],b[15],cout[15]);
