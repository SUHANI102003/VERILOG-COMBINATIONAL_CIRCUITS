`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.08.2024 13:44:45
// Design Name: 
// Module Name: Half_adder_tb
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


module Half_adder_tb();
reg a,b;
wire sum,cout;

Half_adder HA (a,b,sum,cout);

initial begin
    a = 1'b0; b=1'b0;
#10 a = 1'b0; b=1'b1;
#10 a = 1'b1; b=1'b0;
#10 a = 1'b1; b=1'b1;
#10 $finish;
end

initial 
$monitor ($time, " a = %b, b = %b, sum = %b, cout = %b", a,b,sum,cout);
endmodule
