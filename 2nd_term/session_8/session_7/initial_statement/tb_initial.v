module tb_initial;

	reg x, y, a, b, m;

	//1st block
	initial // t=0
	m = 1'b0;

	//2nd block
	initial // t=0
	begin
	a = 1'b0; // t=0
	b = 1'b0; // t=0
	#5 a = 1'b1; // t=5
	#25 b = 1'b0;// t=30
	#10 a = 1'b0;// t=40
	end
	
	//3rd block
	initial
	begin // t=0
	x = 1'b0;
	y = 1'b0;
	#10 x = 1'b0; //t=10
	#25 y = 1'b1; //t=35
	end

	//4th blcok
	initial
	#50 $finish;

endmodule
