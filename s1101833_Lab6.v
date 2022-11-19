//s1101833 óõçkçã Lab6
//XOR
module s1101833_Lab6 (Y, not2andA, not2andB, and2orA, and2orB, A, B);
output Y; //regular output
output not2andA, not2andB, and2orA, and2orB; //gates' output
input A, B;
wire not2andA, not2andB;
wire and2orA, and2orB;

not #(3) notA (not2andB, A);
not #(3) notB (not2andA, B);

and #(6) andA (and2orA, A, not2andA);
and #(6) andB (and2orB, B, not2andB);

or #(8) or1 (Y, and2orA, and2orB);

endmodule
