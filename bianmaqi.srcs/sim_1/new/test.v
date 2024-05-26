`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/01/01 23:18:05
// Design Name: 
// Module Name: test
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

module test;
    reg [7:0] IN;
    reg EN;
    wire [2:0] Y;
    wire Done;

    // ÊµÀý»¯ bianmaqi Ä£¿é
    bianmaqi uut (.IN(IN), .EN(EN), .Y(Y), .Done(Done));

    initial begin
        IN = 0; EN = 0;
        #100;
        EN = 1; IN = 8'b00001000;
        #100;
        EN = 0; IN = 8'b00000010;
        #100;
        EN = 0; IN = 8'b00000100;
        #100;
        EN = 0; IN = 8'b00001000;
        #100;
        EN = 0; IN = 8'b00010000;
        #100;
        EN = 0; IN = 8'b00100000;
        #100;
        EN = 0; IN = 8'b01000000;
        #100;
        EN = 0; IN = 8'b10000000;
        #100;
        EN = 0; IN = 8'b10000001;
        #100;
        EN = 0; IN = 8'b10000001;
        #100;
        $stop;
    end
endmodule
