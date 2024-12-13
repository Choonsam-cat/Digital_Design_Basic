// Name : Lee Sang Hyun
// Date Created : 20-Sep-2024
// Version 0.1
// Date Modified : 
// Module Name : 3 Input  Positive AND Gate
// Description : out = in_A & in_B & in_C
//
//
//
//
//
//
//
//




`timescale 1ns / 1ps

module AND3X1
(

//port list
   in_A,
   in_B,
   in_C,
   out_Y

);

//port declaration
input in_A;
input in_B;
input in_C;
output out_Y;


//modeling(Gate Level Modeling)
//instantiate primitive gate
and AND3X1 (out_Y, in_A, in_B, in_C);




endmodule
