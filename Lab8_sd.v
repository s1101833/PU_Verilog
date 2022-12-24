module Lab8_sd ( output y, input x, clk, rst);

wire A, B, JA, KA, JB, KB;
wire [1:0} state;

assign JA = B & ~x;
assign KA = B & x;
assign JB = x;
assign KB = ~(A^x);
assign state = {A, B};
assign y = A & B;

JKFF JKFFA (A, JA, KA, clk, rst);
JKFF JKFFB (B, JB, KB, clk, rst);
endmodule