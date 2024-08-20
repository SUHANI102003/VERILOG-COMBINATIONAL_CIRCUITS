`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 13:41:21
// Design Name: 
// Module Name: Half_sub
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


module Half_sub(
input a,b,a_bar,
output reg diff, borrow
    );

/* DATAFLOW MODELLING
assign diff = a^b;
assign borrow = ~a&b;

// STRUCTURAL MODELLING
xor G1 (diff ,a,b);
not G2 (a_bar,a);
and G3 (borrow,b,a_bar);
*/
// BEHAVOURAL MODELLING
always @(*)
begin
diff = a^b;
borrow = ~a&b;
end
endmodule
