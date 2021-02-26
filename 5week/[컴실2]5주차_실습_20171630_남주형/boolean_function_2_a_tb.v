`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/09 23:16:38
// Design Name: 
// Module Name: boolean_function_2_a_tb
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


module  boolean_function_2_a_tb;

reg in_a,in_b,in_c;
wire out_d;

 boolean_function_2_a sim(
.a(in_a),
.b(in_b),
.c(in_c),
.d(out_d)
);

initial
begin
    in_a = 1'b0;
    in_b = 1'b0;
    in_c = 1'b0;
end

always@(in_a or in_b or in_c)
begin
    in_a <=#8 ~in_a;
    in_b <=#4 ~in_b;
    in_c <=#2 ~in_c;
end
endmodule
