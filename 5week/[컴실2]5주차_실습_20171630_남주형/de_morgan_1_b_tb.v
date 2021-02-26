`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/09 22:26:31
// Design Name: 
// Module Name: de_morgan_1_b_tb
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


module de_morgan_1_b_tb;

reg in_a,in_b;
wire out_c;

de_morgan_1_b sim(
.a(in_a),
.b(in_b),
.c(out_c)
);

initial
begin
    in_a = 1'b0;
    in_b = 1'b0;
end

always@(in_a or in_b)
begin
    in_a <=#4 ~in_a;
    in_b <=#2 ~in_b;
end
endmodule
