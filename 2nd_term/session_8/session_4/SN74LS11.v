`timescale 1ns / 1ps

module SN74LS11
(
   //portlist
   in_1A,	 in_2A, 	in_3A,
   in_1B,	 in_2B,		in_3B,
   in_1C,	 in_2C,		in_3C,
   out_1Y,	 out_2Y,	out_3Y
);

// port declaration
  input in_1A;  	input in_2A;    	input in_3A;
  input in_1B;  	input in_2B;    	input in_3B;
  input in_1C;  	input in_2C;    	input in_3C;
  output out_1Y;	output out_2Y;  	output out_3Y;
	
//modeling
AND3X1 u1 (.out_Y(out_1Y), .in_A(in_1A), .in_B(in_1B), .in_C(in_1C));
AND3X1 u2 (.out_Y(out_2Y), .in_A(in_2A), .in_B(in_2B), .in_C(in_2C));
AND3X1 u3 (.out_Y(out_3Y), .in_A(in_3A), .in_B(in_3B), .in_C(in_3C));


endmodule
