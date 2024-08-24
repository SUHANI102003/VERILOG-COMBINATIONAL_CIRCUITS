`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.08.2024 17:27:39
// Design Name: 
// Module Name: bcd_to_xs3
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


module bcd_to_xs3(
    input [3:0] bcd,
    output [3:0] xs3
    );
    
// DATAFLOW MODELLING

assign xs3[0] = ~bcd[0];
assign xs3[1] = (bcd[1]&bcd[0]) | (~(bcd[1] | bcd[0]));
assign xs3[2] = ((bcd[1] | bcd[0]) & ~bcd[2]) | (~(bcd[1] | bcd[0]) & bcd[2]);
assign xs3[3] = bcd[3] | ((bcd[0] | bcd[1]) & bcd[2]); 

//**********************************************************************************
// STRUCTURAL MODELLING
/*
wire y1,y2,y3,y4,y5;
not g1 (xs3[0],bcd[0]);

and g3 (y1,bcd[0], bcd[1]);
or  g4 (y2,bcd[1],bcd[0]), 
    g5(xs3[1], y1,~y2), 
    g8(xs3[2],y3,y4),
    g10 (xs3[3], y5,bcd[3]);
   
and g6 (y3, bcd[2], ~y2), 
    g7 (y4,y2,~bcd[2]),
    g9 (y5,y2,bcd[2]);
*/
//**************************************************************************************
// BEHAVIORAL MODELLING
/*
always @(bcd)
 begin
    case(bcd)
    4'b0000 : xs3 = 4'b0011;
    4'b0001 : xs3 = 4'b0100;
    4'b0010 : xs3 = 4'b0101;
    4'b0011 : xs3 = 4'b0110;
    4'b0100 : xs3 = 4'b0111;
    4'b0101 : xs3 = 4'b1000;
    4'b0110 : xs3 = 4'b1001;
    4'b0111 : xs3 = 4'b1010;
    4'b1000 : xs3 = 4'b1011;
    4'b1001 : xs3 = 4'b1100;
    default : xs3 = 4'bxxxx;
    endcase
 end
 */
endmodule
