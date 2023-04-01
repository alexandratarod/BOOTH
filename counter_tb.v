module counter_tb;
  reg clk, rst_b, c0, c4;
  wire count7;
  
  initial begin
    #20
    clk = 0;
    rst_b = 1;
    c0 = 0;
    
    #20
    clk = 1;
    c0 = 1;
    
    #20
    clk = 0;
    
    #20
    clk = 1;
    c0 = 0;
    c4 = 1;
    
     #20
    clk = 0;
    
    #20
    clk = 1;
    
    #20
    clk = 0;
    
    #20
    clk = 1;
    
    #20
    clk = 0;
    
    #20
    clk = 1;
    
    #20
    clk = 0; //3
    
    #20
    clk = 1;
    
    #20
    clk = 0;
    
    #20
    clk = 1;
    
    #20
    clk = 0;//5
    
    #20
    clk = 1;
    
    #20
    clk = 0; //6
    
    #20
    clk = 1;
    
    #20
    clk = 0; //7
    
    #20;
    
    
  end
  
counter leg(.clk(clk), .rst_b(rst_b), .c0(c0), .c4(c4), .count7(count7));
endmodule
