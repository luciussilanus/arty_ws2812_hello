`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2021 07:45:27 PM
// Design Name: 
// Module Name: top
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


module top(
    input wire logic clk,
    input wire logic [3:0] sw,
    output logic sig_out
    );
    
    localparam DIV_BY = 13'd5_000 - 13'd1;
    logic idle;
    logic [13:0] cnt = 0;
    logic [23:0] color = 'h101010;
    
    ws2812 led (.clk, .color, .sig_out, .idle);
    
endmodule
