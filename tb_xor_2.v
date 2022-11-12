//s1101833 ���k�� midterm
module tb_xor_2;
wire C;
reg A, B;

xor_2 M1 (C, A, B);

initial begin
A = 1'b0; B = 1'b0;
#20 A = 1'b0; B = 1'b1;
#20 A = 1'b1; B = 1'b0;
#20 A = 1'b1; B = 1'b1;
end

initial #80 $finish;

endmodule
