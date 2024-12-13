
//oscillation = making clock pulse
//oscillator = clock pulse generator

`timescale 1ns / 1ps // delay + precision

 module clock_gen ();
    reg clk;





   always  //repeat
	#5 clk = ~clk; // 5ns toggle -> 10ns




   initial begin // time = 0s
	clk = 1'b0;

	#100
	$finish;
   end


 endmodule
