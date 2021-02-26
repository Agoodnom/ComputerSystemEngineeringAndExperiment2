`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/09 23:27:56
// Design Name: 
// Module Name: 1_bit
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


module one_bit(
    input a,b,
    output c,d,e,f
    );
    
    assign c = (a==b);
    assign d = (a!=b);
    assign e = (a>b);
    assign f = (a<b);
endmodule
