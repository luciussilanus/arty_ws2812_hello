`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/18/2021 07:46:27 PM
// Design Name: 
// Module Name: ws2812
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


module ws2812(
    input wire logic clk,
    input wire logic [23:0] color,
    output logic sig_out,
    output logic idle
    );
    
    logic [7:0] cnt = 0;
    logic [5:0] dbit = 0;
    
    
    always_ff @(posedge clk) begin
        if (dbit < 24) begin
            idle <= 0;
            if (color[dbit]) begin
                // Logic high, on for 0.70us, off for 0.6us
                sig_out <= cnt < 70;
                if (cnt == 130) begin
                    // this is the last 10ns of the signal, trigger next bit
                    dbit <= dbit + 1;
                    cnt <= 0;
                end else begin
                    cnt <= cnt + 1;
                end
            end else begin
                // Logic low, on for 0.35us, off for 0.80us
                sig_out <= cnt < 35;
                if (cnt == 115) begin
                    // this is the last 10ns of the signal, trigger next bit
                    dbit <= dbit + 1;
                    cnt <= 0;
                end else begin
                    cnt <= cnt + 1;
                end
            end
        end else begin
            cnt <= 0;
            idle <= 1;
            sig_out <= 0;
        end
    end
                
    
endmodule
