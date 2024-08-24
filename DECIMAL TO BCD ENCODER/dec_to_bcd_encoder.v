`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 23:40:39
// Design Name: 
// Module Name: dec_to_bcd_encoder
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


module dec_to_bcd_encoder(
input [9:0] dec,
output reg [3:0] bcd 
    );
// BEHAVIORAL MODELLING    
always @(*)
case(dec)
    10'b00000_00001 : bcd = 4'b0000;
    10'b00000_00010  : bcd = 4'b0001;
    10'b00000_00100  : bcd = 4'b0010;
    10'b00000_01000  : bcd = 4'b0011;
    10'b00000_10000  : bcd = 4'b0100;
    10'b00001_00000  : bcd = 4'b0101;
    10'b00010_00000  : bcd = 4'b0110;
    10'b00100_00000  : bcd = 4'b0111;
    10'b01000_00000  : bcd = 4'b1000;
    10'b10000_00000  : bcd = 4'b1001;
    default : bcd = 4'bxxxx;
endcase


/*DATAFLOW MODELLING
assign bcd[0] = dec[1] | dec[3] | dec[5] | dec[7] | dec[9];
assign bcd[1] = dec[2] | dec[3] | dec[6] | dec[7];
assign bcd[2] = dec[4] | dec[5] | dec[6] | dec[7];
assign bcd[3] = dec[8] | dec[9];
*/
endmodule
