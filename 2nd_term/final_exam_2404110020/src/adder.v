`timescale 1ns / 1ps

module adder (

clk,
rst_n,
in1,
in2,
in3,
in4,
out );

input wire clk;
input wire rst_n;
input wire [13:0] in1;
input wire [13:0] in2;
input wire [13:0] in3;
input wire [13:0] in4;
output reg [15:0] out;



reg [14:0] temp_add1;
always @(posedge clk, negedge rst_n)
begin
	if(~rst_n) temp_add1 <= 14'b0;
	else temp_add1 <= {1'b0, in1} + {1'b0, in2};
end


reg [13:0] temp_in3;
always @(posedge clk, negedge rst_n)
begin
	if(~rst_n) temp_in3 <= 14'b0;
	else temp_in3 <= in3;
end


reg [14:0] temp_add2;
always @(posedge clk, negedge rst_n)
begin
	if(~rst_n) temp_add2 <= 14'b0;
	else temp_add2 <= {1'b0, temp_add1} + {1'b0, in3};
end

reg [13:0] temp_in4;
always @(posedge clk, negedge rst_n)
begin
	if(~rst_n) temp_in4 <= 14'b0;
	else temp_in4 <= in4;
end


always @(posedge clk, negedge rst_n)
begin
	if(~rst_n) out <= 16'b0;
	else out <= {1'b0, temp_add2} + {1'b0, temp_in4};
end

endmodule















