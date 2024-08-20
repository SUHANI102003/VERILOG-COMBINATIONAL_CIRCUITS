`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 22:37:03
// Design Name: 
// Module Name: encoder_8by3
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


module encoder_8by3(
input [0:7] d,
output [0:2] out
    );
//************************
/* DATAFLOW MODELLING

assign out[0] = d[4] | d[5] | d[6] | d[7];
assign out[1] = d[2] | d[3] | d[6] | d[7];
assign out[2] = d[1] | d[3] | d[5] | d[7];
*/
//************************
//STRUCTURAL MODELLING
or o1 (out[0] , d[4], d[5], d[6], d[7]),
   o2 (out[1] , d[2], d[3], d[6], d[7]),
   o3 (out[2] , d[1], d[3], d[5], d[7]);
 
 //***************************
 /* BEHAVIORAL MODELLING
 always @(*)
 case(d)
    8'b1000_0000 : out = 3'b000;
    8'b0100_0000 : out = 3'b001;
    8'b0010_0000 : out = 3'b010;
    8'b0001_0000 : out = 3'b011;
    8'b0000_1000 : out = 3'b100;
    8'b0000_0100 : out = 3'b101;
    8'b0000_0010 : out = 3'b110;
    8'b0000_0001 : out = 3'b111;
 endcase 
 */
endmodule
