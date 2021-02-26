`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 01:51:22
// Design Name: 
// Module Name: decade_counter_tb
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


module decade_counter_tb;
reg x, reset;
wire [3:0] z;
decade_counter connect(x,reset,z);
initial begin
x=0; reset =0;
end

always x = #10 ~x;
always reset = #400 ~reset;
endmodule
