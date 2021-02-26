`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/24 20:15:58
// Design Name: 
// Module Name: four_input_xor_gate_b_tb
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


module four_input_xor_gate_b_tb;

reg in_a,in_b,in_c,in_d;
wire out_e,out_f,out_g;

four_input_xor_gate_b sim(
.a(in_a),
.b(in_b),
.c(in_c),
.d(in_d),
.e(out_e),
.f(out_f),
.g(out_g)
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
in_a <= #16 ~in_a;
in_b <= #8 ~in_b;
in_c <= #4 ~in_c;
in_d <= #2 ~in_d;
end

endmodule
