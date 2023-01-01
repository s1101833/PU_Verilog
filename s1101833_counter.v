// A counter with following repeated binary sequence:
// 0, 2, 4, 6, 1, 3, 5, 0, ...
module s1101833_counter (
	output [2: 0] state,
	input clk, rst
);

wire A, B, C, JA, KA, JB, KB, JC, KC;

JKFF JKFFA (A, JA, KA, clk, rst);
JKFF JKFFB (B, JB, KB, clk, rst);
JKFF JKFFC (C, JC, KC, clk, rst);

assign JA = B;
assign KA = B | C;
assign JB = ~A | ~C;
assign KB = 1'b1;
assign JC = A & B;
assign KC = A;
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

