`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 02:42:20
// Design Name: 
// Module Name: two_four_counter
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
module two_four_counter(x,reset,z);
input x, reset;
output [3:0] z;
reg [3:0] z = 4'b0000;

always@(posedge x or posedge reset) begin
    if(reset|z==4'b1111)
        z<=4'b0000;
    else if(z==4'b0100)
        z<=4'b1011;
    else
        z<=z+1;
end
endmodule
