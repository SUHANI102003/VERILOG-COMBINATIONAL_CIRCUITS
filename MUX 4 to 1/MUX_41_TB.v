`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.08.2024 12:25:14
// Design Name: 
// Module Name: MUX_41_TB
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


module MUX_41_TB();
reg [3:0] i;
reg [1:0] sel;
wire f;

MUX_41_bv DUT (i,sel,f);

initial 
begin
sel=2'b00; i=4'b1010;
$display ("sel =%b, f=%b",sel,f);

#10 sel=2'b01; i=4'b1010;
$display ("sel =%b, f=%b",sel,f);

#10 sel=2'b10; i=4'b1010;
$display ("sel =%b, f=%b",sel,f);

#10 sel=2'b11; i=4'b1010;
$display ("sel =%b, f=%b",sel,f);
#10 $finish;
end


endmodule
