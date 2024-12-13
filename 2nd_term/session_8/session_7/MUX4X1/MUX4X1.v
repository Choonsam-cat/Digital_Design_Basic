`timescale 1ns / 1ps

module MUX4X1(
	//portlist
	out,
	i0,
	i1,
	i2,
	i3,
	s0,
	s1
);



	//port declaration
	output out;
	input i0;
	input i1;
	input i2;
	input i3;
	input s0;
	input s1;

	//wire signal
	wire s1n, s0n;
	wire y0, y1, y2, y3;

	//s1n, s0n
	not (s1n, s1);
	not (s0n, s0);

	//first level modeling(3input AND)

	and (y0, i0, s1n, s0n);
	and (y1, i1, s1n, s0);
	and (y2, i2, s1, s0n);
	and (y3, i3, s1, s0);

	//second level modeling(4input OR)
	or  (out, y0, y1, y2, y3);


endmodule
