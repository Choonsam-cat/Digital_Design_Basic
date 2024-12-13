`timescale 1ns /1ps

module SN54ALS153(


	//port list
	in_A, in_B, in_C0, in_C1, in_C2, in_C3, in_D0, in_D1, in_D2, in_D3, in_G1, in_G2,
	out_1Y, out_2Y
);

	//port declaration
	output out_1Y;	output out_2Y;
	input in_A; input in_B;
	input in_C0; input in_C1; input in_C2; input in_C3;
	input in_D0; input in_D1; input in_D2; input in_D3;
	input in_G1; input in_G2;
	
	
	//data flow modeling
	assign out_1Y = (~in_G1&in_C0&~in_A&~in_B) | (~in_G1&in_C1&~in_A&in_B) | (~in_G1&in_C2&in_A&~in_B) | (~in_G1&in_C3&in_A&in_B);
	assign out_2Y = (~in_G2&in_D0&~in_A&~in_B) | (~in_G2&in_D1&~in_A&in_B) | (~in_G2&in_D2&in_A&~in_B) | (~in_G2&in_D3&in_A&in_B);

endmodule
