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