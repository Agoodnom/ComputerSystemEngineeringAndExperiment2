`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 23:41:17
// Design Name: 
// Module Name: two_bit_comparator_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module two_bit_comparator_tb;

reg in_a1,in_a0,in_b1,in_b0;
wire out_f1,out_f2,out_f3;

two_bit_comparator sim(
.a1(in_a1),
.a0(in_a0),
.b1(in_b1),
.b0(in_b0),
.f1(out_f1),
.f2(out_f2),
.f3(out_f3)
);

initial
begin
    in_a1 = 1'b0;
    in_a0 = 1'b0;
    in_b1 = 1'b0;
    in_b0 = 1'b0;
end

always@(in_a1 or in_a0 or in_b1 or in_b0)
begin
    in_a1 <=#8 ~in_a1;
    in_a0 <=#4 ~in_a0;
    in_b1 <=#2 ~in_b1;
    in_b0 <=#1 ~in_b0;
end

endmodule
