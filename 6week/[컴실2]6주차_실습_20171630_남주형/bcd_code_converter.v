`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/10/10 18:30:21
// Design Name: 
// Module Name: bcd_code_converter
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


module bcd_code_converter(
    input a,b,c,d,
    output w,x,y,z
    );
    
    assign w = ~((~a&~b)|(~a&~c&~d));
    assign x = ~((~a&~b)|(~a&~c&d));
    assign y = ~((b&~c)|(b&d)|(~a&~b&~c));
    assign z = d;
endmodule
