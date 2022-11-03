//s1101833 —›k‹ Lab5
module and_2 (Y, A, B);
	output Y;
	input A, B;
	wire w1;

nand_2 M1 (w1, A, B);
cmos_inverter M2 (Y, w1);

endmodule
