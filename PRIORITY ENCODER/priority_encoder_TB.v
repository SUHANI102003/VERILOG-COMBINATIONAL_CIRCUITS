`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.08.2024 23:29:42
// Design Name: 
// Module Name: priority_encoder_TB
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


module priority_encoder_TB();
reg [3:0] d;
wire [1:0] out;
integer k;

priority_encoder DUT (.d(d), .out(out));

initial
#150 $finish;

initial
begin
    d = 0;
    for(k=0; k<32; k=k+1)
    begin
        #5 d = d+1;
    end
end
endmodule
