`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.08.2024 10:40:46
// Design Name: 
// Module Name: adder_Nbit
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

// We cannot instantiate full adders if the number is say 10,20,30 so we use generate function

parameter N=8;
module adder_Nbit(
input carry_in,
input [N-1:0] A,B,
output carry_out,
output [N-1:0] sum );
wire [N:0] c;

assign c[0] = carry_in;
assign carry_out = c[N];

genvar p;
generate for (p=0; p<N; p=p+1)
    begin : FA_loop
    // STRUCTURAL MODELLING
    wire t1,t2,t3;
    xor X1 (t1, A[p], B[p]) , X2 (sum[p], t1, c[p]);
    and A1 (t2, A[p], B[p]),  A2 (t3, c[p], t1);
    or O1 (c[p+1], t2,t3);
    end
    endgenerate
endmodule
