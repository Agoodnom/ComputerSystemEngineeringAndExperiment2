`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 18:31:26
// Design Name: 
// Module Name: half_subtractor_tb
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


module half_subtractor_tb;

reg in_A,in_B;
wire out_D,out_b;

half_subtractor sim(
.A(in_A),
.B(in_B),
.D(out_D),
.b(out_b)
);

initial
begin
    in_A = 1'b0;
    in_B = 1'b0;
end

always@(in_A or in_B)
begin
    in_A <=#4 ~in_A;
    in_B <=#2 ~in_B;
end

endmodule

