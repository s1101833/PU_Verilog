module tb_Binary_Counter_4_Par_Load;
reg Count, Load, CLK, Clr;
reg [3: 0] IN;
wire CO;
wire [3: 0] A;
//Binary_Counter_4_Par_Load cnt (Count, Load, IN, CLK, Clr, A, CO);
Binary_Counter_4_Par_Load cnt (A, CO, IN, Count, Load, CLK, Clr);
always
#5 CLK = ~CLK;
initial
begin
Clr = 0;
CLK = 1;
Load = 0; Count = 1;
#5 Clr = 1;
#40 Load = 1; IN = 4'b1001;
#10 Load = 0;
#70 Count = 0;
#20 $finish;
end
endmodule