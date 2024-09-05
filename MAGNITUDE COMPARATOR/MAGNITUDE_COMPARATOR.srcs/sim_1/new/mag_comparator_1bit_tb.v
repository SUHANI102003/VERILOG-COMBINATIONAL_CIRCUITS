`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 10:41:44
// Design Name: 
// Module Name: mag_comparator_1bit_tb
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


module mag_comparator_1bit_tb();
reg x,y;
wire g,l,e;

mag_comparator_1bit dut (x,y,g,e,l);
    
initial
#200 $finish;

initial
begin
         {x,y} = 2'b00;
    #50  {x,y} = 2'b01;
    #50  {x,y} = 2'b10;
    #50  {x,y} = 2'b11;
end
endmodule
