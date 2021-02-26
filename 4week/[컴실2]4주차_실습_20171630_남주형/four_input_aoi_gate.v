`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/24 20:26:53
// Design Name: 
// Module Name: four_input_aoi_gate
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


module four_input_aoi_gate(
    input a,b,c,d,
    output e,f,g
    );
    
    assign e = a&b;
    assign f = c&d;
    assign g = ~(e|f);
    
endmodule
