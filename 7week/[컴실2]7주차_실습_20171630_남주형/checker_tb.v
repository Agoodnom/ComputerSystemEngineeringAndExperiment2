`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 23:42:10
// Design Name: 
// Module Name: checker_tb
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


module checker_tb;

reg in_a,in_b,in_c,in_d,in_p;
wire out_e;

checker sim(
.a(in_a),
.b(in_b),
.c(in_c),
.d(in_d),
.p(in_p),
.e(out_e)
);

initial
begin
    in_p = 1'b0;
    in_a = 1'b0;
    in_b = 1'b0;
    in_c = 1'b0;
    in_d = 1'b0;
end

always@(in_a or in_b or in_c or in_d or in_p)
begin
    in_p <=#16 ~in_p;
    in_a <=#8 ~in_a;
    in_b <=#4 ~in_b;
    in_c <=#2 ~in_c;
    in_d <=#1 ~in_d;
end

endmodule
