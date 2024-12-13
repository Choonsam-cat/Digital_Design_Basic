`timescale 1ns / 1ps



module tb_adder ();


reg clk, rst_n;
reg [13:0] in1;
reg [13:0] in2;
reg [13:0] in3;
reg [13:0] in4;
wire [15:0] piped_out;


always #5 clk = ~clk;


initial begin

// t = 0
clk = 1'b0;
rst_n = 1'b0;
in1 = 14'd0;
in2 = 14'd0;
in3 = 14'd0;
in4 = 14'd0;

// t = 10
#10
rst_n = 1'b1;

// t = 40
#30
in1 = 14'd1111; in2 = 14'd1111; in3 = 14'd1111; in4 = 14'd1111;

// t = 50
#10
in1 = 14'd3333; in2 = 14'd3333; in3 = 14'd3333; in4 = 14'd3333;

// t = 60
#10
in1 = 14'd5555; in2 = 14'd5555; in3 = 14'd5555; in4 = 14'd5555;

// t = 200
#140
rst_n = 1'b0;

// t = 300
#100
$finish;

end


adder DUT(
	.clk (clk),
	.rst_n (rst_n),
	.in1 (in1),
	.in2 (in2),
	.in3 (in3),
	.in4 (in4),
	.out (piped_out)
);


endmodule















