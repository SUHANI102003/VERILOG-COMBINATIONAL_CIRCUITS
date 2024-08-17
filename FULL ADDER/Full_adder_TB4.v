`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 18:32:37
// Design Name: 
// Module Name: Full_adder_TB4
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

// To test whether FA is working or not through console
module Full_adder_TB4();
reg a,b,cin;
wire sum,cout;
integer correct;

Full_adder FA3(a,b,cin,sum,cout);

initial
begin
correct = 1;
#5 a=1; b=1; cin=1;
if((sum!=1) | (cout!=1))
correct = 0;

#5 a=1; b=1; cin=0;
if((sum!=0) | (cout!=1))
correct = 0;

#5 a=0; b=1; cin=0;
if((sum!=0) | (cout!=1))
correct = 0;

#5 $display ("%d", correct);
end
endmodule
