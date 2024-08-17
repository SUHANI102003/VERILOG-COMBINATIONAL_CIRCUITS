`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 13:35:17
// Design Name: 
// Module Name: Half_adder
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


module Half_adder(
    input a,b,
    output  sum,cout
    );
//************************************    
 //DATAFLOW MODELLING
 
 assign sum = a^b;
 assign cout = a&b;

 //************************************
 
 /* STRUCTURAL MODELLING
 xor G1 (sum,a,b);
 and G2 (cout,a,b);
 */
 //************************************
 
 // BEHAVIORAL MODELLING
 /*always@(*)
 begin
 sum = a^b;
 cout = a&b;
 end
 */
endmodule
