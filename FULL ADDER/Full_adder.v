`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 13:54:51
// Design Name: 
// Module Name: Full_adder
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


module Full_adder(
    input a,b,cin,
    output sum,cout
    );
   
//*********************************
// DATAFLOW MODELLING

assign sum = a^b^cin;
assign cout = (a&b) | (b&cin) | (cin&a);

//**********************************

//STRUCTURAL MODELLING
/*
wire s1,c1,c2;
xor G1 (s1,a,b), G2 (sum,s1,cin);
and G3 (c1,a,b), G4 (c2,cin,s1);
or G5 (cout,c1,c2);
*/
//***********************************

//BEHAVIORAL MODELLING
/*
always @(*)
begin
sum = a^b^cin;
cout = (a&b) | (cin &(a^b));
end
*/
endmodule
