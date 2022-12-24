module tb_p6_27_JK;  
wire [2:0] state;  
reg clock, reset; 

p6_27_JK DUT(state, clock, reset); 

initial begin  
   reset=0;  
   #2 reset=1;  
   #200 $finish;  
end

initial begin  
   clock=0; forever #5 clock=~clock;  
end
endmodule 