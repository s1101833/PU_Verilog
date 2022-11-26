//s1101833 óõçkçã Lab7
module tb_s1101833_Lab7;
reg [7:0] A, B;
reg [2:0] Sel;
wire [7:0] Y;

s1101833_Lab7 M1 (Y, A, B, Sel);

initial begin
A = 8'b00110101; B = 8'b01010111;
Sel = 3'b000;
repeat (7) #10 Sel = Sel + 3'b001;
#10
A = 8'b10010101; B = 8'b10010111;
Sel = 3'b000;
repeat (7) #10 Sel = Sel + 3'b001;
end

initial #200 $finish;

endmodule
