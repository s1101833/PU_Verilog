module nand_2 (Y, A, B);
	output Y;
	input A, B;
	supply0 GND;
	supply1 PWR;
	wire w1;

	pmos (Y, PWR, A);
	pmos (Y, PWR, B);
	nmos (Y, w1, A);
	nmos (w1, GND, B);
endmodule