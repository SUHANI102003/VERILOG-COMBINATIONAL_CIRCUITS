`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 19:16:46
// Design Name: 
// Module Name: FA_frm_HA
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


module FA_frm_HA(
    input a,b,cin,
    output sum,cout
    );
   wire c1,s1,c2;
 // STRUCTURAL MODELLING
 Half_adder HA1 (a,b,s1,c1);
 Half_adder HA2 (cin,s1,sum,c2);
 assign cout = c1 | c2;
endmodule
