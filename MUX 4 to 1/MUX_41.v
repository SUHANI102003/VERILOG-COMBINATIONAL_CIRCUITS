`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 20:05:51
// Design Name: 
// Module Name: MUX_41
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


module MUX_41(
    //input i0,i1,i2,i3,
    //input s0,s1,
    input [3:0] in,
    input [1:0] sel,
    output f
    );
//*****************************    
/* STRUCTURAL MODELLING
wire s0n,s1n;
wire y1,y2,y3,y4;

not N0 (s0n,s0), N1 (s1n,s1); 
and A0 (y1, i0, s1n,s0n),
    A1 (y2, i1, s10,s0),
    A2 (y3, i2, s1,s0n),
    A3 (y4, i3, s1,s0);
or O1 (f,y1,y2,y3,y4);
 */
//***************************   
/* DATAFLOW MODELLING
  assign f= (~s0 & ~s1 & i0)| 
            (s0 & ~s1 & i1) |
            (~s0 & s1 & i2) |
            (s1 & s0 & i3);
 */
//           'OR' 

assign f = in[sel];
 //**************************
 // USING CONDITIONAL OPERATOR
// assign f= s1 ? (s0 ? i3 : i2) : (s0 ? i1 : i0);
 //***************************************
 
 
endmodule
