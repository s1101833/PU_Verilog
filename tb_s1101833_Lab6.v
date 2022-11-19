//s1101833 óõçkçã Lab6
module tb_s1101833_Lab6;
wire Y, not2andA, not2andB, and2orA, and2orB;
reg A, B;

s1101833_Lab6 M1 (Y, not2andA, not2andB, and2orA, and2orB, A, B);

initial begin
A = 1'b0; B = 1'b0;
#25 A = 1'b0; B = 1'b1;
end

initial #50 $finish;

endmodule
