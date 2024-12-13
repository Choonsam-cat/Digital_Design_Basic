`timescale 1ns / 1ps

module tb_SN54ALS153 ();


	wire out_1Y;
	wire out_2Y;
	reg in_A; reg in_B; 
	reg in_C0; reg in_C1; reg in_C2; reg in_C3;
	reg in_D0; reg in_D1; reg in_D2; reg in_D3;
	reg in_G1; reg in_G2;


	SN54ALS153 DUT
	(
	.out_1Y(out_1Y), .out_2Y(out_2Y),
	.in_C0(in_C0), .in_C1(in_C1), .in_C2(in_C2), .in_C3(in_C3),
	.in_D0(in_D0), .in_D1(in_D1), .in_D2(in_D2), .in_D3(in_D3),
	.in_A(in_A), .in_B(in_B), .in_G1(in_G1), .in_G2(in_G2)
	);



	task display;
	begin
		$display
		(
		"$time=%0d" , $time , " ns"
		, " strobe = | " , stb_in_G1_n
		, " in_A = " , in_A , " in_B = " , in_B
		, " in_C0 = " , in_C0 , " in_C1 = " , in_C1 , " in_C2 = " , in_C2 , " in_C3 = " , in_C3
	//	, " in_D0 = " , in_D0 , " in_D1 = " , in_D1 , " in_D2 = " , in_D2 , " in_D3 = " , in_D3 -- Second MUX Input
	//	, " in_G1 = " , in_G1 , " in_G2 = " , in_G2 , -- Strobe Not Used
		 " out_1Y = " , out_1Y // , " out_2Y = " , out_2Y -- Second MUX Output
		);
	end
	endtask



	initial begin
	// t = 0 , init(strobe release)
	stb_in_G1_n = 1'b1; in_A = 1'b0; in_B = 1'b0; in_C0 = 1'b0; in_C1 = 1'b0; in_C2 = 1'b0; in_C3 = 1'b0; #10; display;
	// t = 10
	stb_in_G1_n = 1'b0; in_A = 1'b0; in_B = 1'b0; in_C0 = 1'b1; in_C1 = 1'b0; in_C2 = 1'b0; in_C3 = 1'b0; #10; display;
	// t = 20
	stb_in_G1_n = 1'b0; in_A = 1'b0; in_B = 1'b1; in_C0 = 1'b0; in_C1 = 1'b1; in_C2 = 1'b0; in_C3 = 1'b0; #10; display;
	// t = 30
	stb_in_G1_n = 1'b0; in_A = 1'b1; in_B = 1'b0; in_C0 = 1'b0; in_C1 = 1'b0; in_C2 = 1'b1; in_C3 = 1'b0; #10; display;
	// t = 40
	stb_in_G1_n = 1'b0; in_A = 1'b1; in_B = 1'b1; in_C0 = 1'b0; in_C1 = 1'b0; in_C2 = 1'b0; in_C3 = 1'b1; #10; display;






//	in_G1 = 1; #10; display;
//	in_A = 0; in_B = 0; in_C0 = 0; in_G1 = 0; #10; display;
//	in_A = 0; in_B = 0; in_C0 = 1; in_G1 = 0; #10; display;
//	in_A = 0; in_B = 1; in_C1 = 0; in_G1 = 0; #10; display;
//	in_A = 0; in_B = 1; in_C1 = 1; in_G1 = 0; #10; display;
//	in_A = 1; in_B = 0; in_C2 = 0; in_G1 = 0; #10; display;
//	in_A = 1; in_B = 0; in_C2 = 1; in_G1 = 0; #10; display;
//	in_A = 1; in_B = 1; in_C3 = 0; in_G1 = 0; #10; display;
//	in_A = 1; in_B = 1; in_C3 = 1; in_G1 = 0; #10; display;
	


//	in_G2 = 1; in_G1 = 1;  #10; display;
//	in_A = 0; in_B = 0; in_D0 = 0; in_G2 = 0; #10; display;
//	in_A = 0; in_B = 0; in_D0 = 1; in_G2 = 0; #10; display;
//	in_A = 0; in_B = 1; in_D1 = 0; in_G2 = 0; #10; display;
//	in_A = 0; in_B = 1; in_D1 = 1; in_G2 = 0; #10; display;
//	in_A = 1; in_B = 0; in_D2 = 0; in_G2 = 0; #10; display;
//	in_A = 1; in_B = 0; in_D2 = 1; in_G2 = 0; #10; display;
//	in_A = 1; in_B = 1; in_D3 = 0; in_G2 = 0; #10; display;
//	in_A = 1; in_B = 1; in_D3 = 1; in_G2 = 0; #10; display;
	#30;
	$finish;
	end
endmodule
