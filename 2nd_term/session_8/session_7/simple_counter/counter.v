`timescale 1ns / 1ps


module counter (
	//port list
	clk,
	rst_n,
	cnt
	);


//port declaration
	input wire clk;
	input wire rst_n;
	output reg [6:0] cnt; // 0 ~ 128 (same with 2^7)


//bahaviral modeling
	
	always @(posedge clk, negedge rst_n)
	begin
		if (rst_n == 0)
		begin
			cnt <= 0;
		end
		else if (cnt < 100)
		begin
			cnt <= cnt + 1;
		end //counts to 100
	end

endmodule

