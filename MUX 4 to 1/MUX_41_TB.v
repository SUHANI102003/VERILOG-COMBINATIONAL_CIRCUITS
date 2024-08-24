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
  /*
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
*/
i = 4'd3;
i = 4'd4;
i = 4'd6;
i = 4'd8;

   sel = 2'b00;
#5 sel = 2'b01;
#5 sel = 2'b10;
#5 sel = 2'b11;
#5;
#5 i = 4'd4;
#5 i = 4'd2;
#5 i = 4'd7;
#5 i = 4'd6;
end
initial #40 $finish;


endmodule
