`timescale 1ns / 1ps


module tb_sn54ls32();

wire O_1Y; wire O_2Y; wire O_3Y; wire O_4Y;
reg I_1A; reg I_1B; reg I_2A; reg I_2B;
reg I_3A; reg I_3B; reg I_4A; reg I_4B;

SN54LS32 DUT(
.o_1Y(O_1Y), .o_2Y(O_2Y), .o_3Y(O_3Y),
.i_1A(I_1A), .i_1B(I_1B), .i_2A(I_2A), .i_2B(I_2B),
.i_3A(I_3A), .i_3B(I_3B), .i_4A(I_4A), .i_4B(I_4B)
);


initial begin
I_1A = 0; I_1B=0; #10
I_1A = 0; I_1B=1; #10
I_1A = 1; I_1B=0; #10
I_1A = 1; I_1B=1; #10
#60
$finish;
end
endmodule
