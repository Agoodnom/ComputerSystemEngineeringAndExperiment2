`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 18:28:50
// Design Name: 
// Module Name: half_adder_tb
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


module half_adder_tb;

reg in_a,in_b;
wire out_s,out_c;

half_adder sim(
.a(in_a),
.b(in_b),
.s(out_s),
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
