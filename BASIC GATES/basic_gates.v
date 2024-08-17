`timescale 1ns / 1ps

module basic_gates(
    input a,b,
    output y0,y1,y2,y3,y4,y5,y6
    );
 /*  
 //***********************************
 DATAFLOW MODELLING
 
 assign y0 = a&b;       //AND
 assign y1 = a|b;       //OR
 assign y2 = ~a;        //NOT
 assign y3 = a^b;       //XOR
 assign y4 = ~(a&b);    //NAND
 assign y5 = ~(a|b);    //NOR
 assign y6 = ~(a^b);    //XNOR
 */
   
 //***********************************
 
 // STRUCTURAL MODELLING
 /*
 and B1 (y0,a,b);
 or B2 (y1,a,b);
 not B3 (y2,a);
 nand B4 (y3,a,b);
 nor B5 (y4,a,b);
 xor B6 (y5,a,b);
 xnor B7 (y6,a,b);
 */
 
 //************************************
endmodule
