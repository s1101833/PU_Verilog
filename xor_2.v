//s1101833 óõçkçã midterm
module xor_2 (Y, A, B);
	output Y;
	input A, B;
	supply0 GND;
	supply1 PWR;
	wire w1, w2, w3, w4;

	//PWR
	nmos (w1, PWR, A);
	pmos (Y, w1, B);

	nmos (w2, PWR, B);
	pmos (Y, w2, A);

	//GND
	nmos (Y, w3, A);
	nmos (w3, GND ,B);

	pmos (Y, w4, A);
	pmos (w4, GND, B);
endmodule