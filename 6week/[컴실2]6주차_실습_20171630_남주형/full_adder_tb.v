`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 18:30:59
// Design Name: 
// Module Name: full_adder_tb
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


module full_adder_tb;

reg in_a,in_b,in_cin;
wire out_s,out_cout;

full_adder sim(
.a(in_a),
.b(in_b),
.cin(in_cin),
.s(out_s),
.cout(out_cout)
);

initial
begin
    in_a = 1'b0;
    in_b = 1'b0;
    in_cin = 1'b0;
end

always@(in_a or in_b or in_cin)
begin
    in_a <=#8 ~in_a;
    in_b <=#4 ~in_b;
    in_cin <=#2 ~in_cin;
end

endmodule
