`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 02:42:31
// Design Name: 
// Module Name: two_four_counter_tb
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
module two_four_counter_tb;
reg x, reset;
wire [3:0] z;
two_four_counter connect(x,reset,z);
initial begin
x=0; reset =0;
end

always x = #10 ~x;
always reset = #400 ~reset;
endmodule
