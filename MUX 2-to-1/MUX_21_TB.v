`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 22:35:44
// Design Name: 
// Module Name: MUX_21_TB
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


module MUX_21_TB();
reg i0,i1,sel;
wire f;

MUX_21 DUT (i0,i1,sel,f);

initial
begin
sel=1'b0; i0=1'b0; i1=1'b0;
#10 sel=1'b0; i0=1'b1; i1=1'b1;
#10 sel=1'b1; i0=1'b0; i1=1'b0;
#10 sel=1'b1; i0=1'b1; i1=1'b1;
#10 $finish;
end

initial
$monitor ($time, " sel=%b, i0=%b, i1=%b, f=%b", sel,i0,i1,f);
endmodule
