module tb_p5_19_JK;  
wire y;  
reg x, clock, reset; 

p5_19_JK DUT(y, x, clock, reset); 

initial begin  
   reset=0;  
   #2 reset=1;x=1;  
   #100 x=0;  
   repeat (5) #30 x=~x;  
   #10 $finish;  
end  

initial begin  
   clock=0; forever #5 clock=~clock;  
end  

endmodule
