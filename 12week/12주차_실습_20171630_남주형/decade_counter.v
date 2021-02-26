`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/11/21 01:51:01
// Design Name: 
// Module Name: decade_counter
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


module decade_counter(x,reset,z);
input x, reset;
output [3:0]z;
reg[3:0]z =4'b0000;

always@(posedge x or posedge reset)begin
if(reset)
z<= 4'b0000;
else
begin
z<=z+1;
if(z==4'b1001)
z<=4'b0000;
end
end
endmodule
