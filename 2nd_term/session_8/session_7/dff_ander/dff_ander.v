module dff_ander(
	in1, in2, out, clk
	);



	input wire in1, in2, clk;
	output reg out;


	always @(posedge clk)
	begin
	out = in1 & in2;
	end

endmodule
