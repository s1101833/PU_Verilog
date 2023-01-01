module tb_s1101833_counter;  
wire [2:0] state;  
reg clock, reset; 

s1101833_counter M1 (state, clock, reset); 

initial begin  
   reset=0;  
   #2 reset=1;  
   #200 $finish;  
end

initial begin  
   clock=0; forever #5 clock=~clock;  
end
endmodule 
