`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 20:33:04
// Design Name: 
// Module Name: MUX_41_bv
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

// BEHAVIORAL MODELLING
module MUX_41_bv(
input [3:0] i,
input [1:0] sel,
output reg f    );

always@(*)
begin
casex(sel)
    2'b00 : f = i[0];
    2'b01 : f = i[1];
    2'b10 : f = i[2];
    2'b11 : f = i[3];
    default : f = 1'bx;
endcase
end
    //       'OR'
/*
always@(*)
begin
    f = sel[1] ? (sel[0] ? i[3] : i[2]) : (sel[0] ? i[1] : i[1]);
end
*/
endmodule
