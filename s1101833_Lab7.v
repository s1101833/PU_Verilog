//s1101833 óõçkçã Lab7
module s1101833_Lab7 (
	output reg [7:0] Y,
	input [7:0] A,
	input [7:0] B,
	input [2:0] Sel
	);

	always @ (A, B, Sel)
		case (Sel)
			3'b000: Y = 8'b00000000;
			3'b001: Y = A & B;
			3'b010: Y = A | B;
			3'b011: Y =  A ^ B;
			3'b100: Y = ~A;
			3'b101: Y = A - B;
			3'b110: Y = A + B;
			3'b111: Y = 8'b11111111;
		endcase
endmodule
