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


module adder_Nbit
#(parameter N=8)
(
input carry_in,
input [N-1:0] A,B,
output carry_out,
output [N-1:0] sum );
wire [N:0] c;


// STRUCTURAL MODELLING

assign c[0] = carry_in;
assign carry_out = c[N];
/*
genvar p;
generate for (p=0; p<N; p=p+1)
    begin : FA_loop
    wire t1,t2,t3;
    xor X1 (t1, A[p], B[p]) , X2 (sum[p], t1, c[p]);
    and A1 (t2, A[p], B[p]),  A2 (t3, c[p], t1);
    or O1 (c[p+1], t2,t3);
    end
    endgenerate
 */ 
 
 // By instantiation
genvar k;
 generate
    for (k=0; k<N; k=k+1)
    begin : FA_loop1
    Full_adder FA0(.a(A[k]), .b(B[k]), .cin(c[k]), .sum(sum[k]), .cout(c[k+1]));
    end
 endgenerate
endmodule
