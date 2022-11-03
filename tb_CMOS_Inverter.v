module tb_CMOS_Inverter;
wire Out;
reg in;

cmos_inverter M1 (Out, in); // Instance name (M1) required


initial begin
	in = 1'b0;
#10 in = 1'b1;
#10 in = 1'b0;
#10 in = 1'b1;
end


initial #50 $finish;

endmodule