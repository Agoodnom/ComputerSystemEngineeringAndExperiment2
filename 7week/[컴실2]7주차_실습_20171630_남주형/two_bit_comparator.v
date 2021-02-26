`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/15 23:40:42
// Design Name: 
// Module Name: two_bit_comparator
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


module two_bit_comparator(
    input a1,a0,b1,b0,
    output f1,f2,f3
    );
    
    assign f1 = (a0&~b1&~b0)|(a1&~b1)|(a1&a0&~b0);
    assign f2 = ~(a0^b0)&~(a1^b1);
    assign f3 = (~a1&b1)|(~a0&b1&b0)|(~a1&~a0&b0);
endmodule
