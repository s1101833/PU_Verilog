//s1101833 §õ¯Ñ»¨ Lab final
module p6_27_JK (
	output [2: 0] state,
	input clk, rst
);

wire A, B, C, JA, KA, JB, KB, JC, KC;

JKFF JKFFA (A, JA, KA, clk, rst);
JKFF JKFFB (B, JB, KB, clk, rst);
JKFF JKFFC (C, JC, KC, clk, rst);

assign JA = B & C;
assign KA = B;
assign JB = C;
assign KB = A | C;
assign JC = ~A | ~B;
assign KC = 1'b1;
assign state = {A, B, C};

endmodule

// JK flip-flop
module JKFF ( output Q, input J, K, clk, rst);
wire JK;
assign JK = (J & ~Q) | (~K & Q);
// Instantiate D flip-flop
DFF JK1 (Q, JK, clk, rst);
endmodule

// D flip-flop
module DFF ( output reg Q, input D, clk, rst);
always @ ( posedge clk, negedge rst)
if (!rst) Q <= 1'b0;
else Q <= D;
endmodule
