`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/20 01:12:15
// Design Name: 
// Module Name: three_input_and_gate_b_tb
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

module three_input_and_gate_b_tb;

reg in_a,in_b,in_c;

wire out_d,out_e;

three_input_and_gate_b and_sim_b(
.a(in_a),
.b(in_b),
.c(in_c),
.d(out_d),
.e(out_e)
);

initial
begin
in_a=1'b0;
in_b=1'b0;
in_c=1'b0;
end

always@(in_a or in_b or in_c)
begin
in_a <=#8 ~in_a;
in_b <=#4 ~in_b;
in_c <=#2 ~in_c;
end

endmodule
