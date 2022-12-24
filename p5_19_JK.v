//s1101833 óõçkçã Lab8
module p5_19_JK ( output y, input x, clk, rst);

wire A, B, C, JA, KA, JB, KB, JC, KC;
wire [2:0] state;

assign JA = ~B & x;
assign KA = 1'b1;
assign JB = (~C & ~x) + A;
assign KB = C ^ x;
assign JC = (~A & x) + (~A & ~B & ~x);
assign KC = x;
assign state = {A, B, C};
assign y = (~A & x) + (~A & ~B & C);

JKFF JKFFA (A, JA, KA, clk, rst);
JKFF JKFFB (B, JB, KB, clk, rst);
JKFF JKFFC (C, JC, KC, clk, rst);
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
