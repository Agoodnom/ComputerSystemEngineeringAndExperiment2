`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 19:38:21
// Design Name: 
// Module Name: bcd_code_converter_tb
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


module bcd_code_converter_tb;

reg in_a,in_b,in_c,in_d;
wire out_w,out_x,out_y,out_z;

bcd_code_converter sim(
.a(in_a),
.b(in_b),
.c(in_c),
.d(in_d),
.w(out_w),
.x(out_x),
.y(out_y),
.z(out_z)
);

initial
begin
    in_a = 1'b0;
    in_b = 1'b0;
    in_c = 1'b0;
    in_d = 1'b0;
end

always@(in_a or in_b or in_c or in_d)
begin
    in_a <=#16 ~in_a;
    in_b <=#8 ~in_b;
    in_c <=#4 ~in_c;
    in_d <=#2 ~in_d;
end

endmodule

