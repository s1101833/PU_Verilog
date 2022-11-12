//s1101833 óõçkçã midterm
module nor_2 (Y, A, B);
	output Y;
	input A, B;
	supply0 GND;
	supply1 PWR;
	wire w1;
	
	pmos (w1, PWR, A);
	pmos (Y, w1, B);
	nmos (Y, GND, A);
	nmos (Y, GND, B);
endmodule
	