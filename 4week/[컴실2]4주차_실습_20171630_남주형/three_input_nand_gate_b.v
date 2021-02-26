`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/24 21:16:31
// Design Name: 
// Module Name: three_input_nand_gate_b
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


module three_input_nand_gate_b(
    input a,b,c,
    output d,e
    );
    
    assign d = ~(a&b);
    assign e = ~(c&d);
    
endmodule