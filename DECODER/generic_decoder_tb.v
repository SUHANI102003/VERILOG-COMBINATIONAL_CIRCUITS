`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.08.2024 10:39:17
// Design Name: 
// Module Name: generic_decoder_tb
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


module generic_decoder_tb();
//1) Declare local reg and wire identifiers
parameter n = 4;
reg [n-1:0] w;   //[2:0]
reg en;
wire [0:2**n-1] y ;   // [0:7]
integer k;

// 2) Instantiate the design under test
decoder_generic #(.n(n)) DUT (.w(w), .en(en), .y(y));

//3)  specify a stopwatch to stop simulation
initial
#100 $finish;

// 4) Generate stimuli, using initial or always block
initial
begin
   en = 1'b0;
end

always
begin
   #5 en = ~en;
   w=0;
   for (k=0; k < 2**n; k=k+1)
     #5 w = k;
end
endmodule
