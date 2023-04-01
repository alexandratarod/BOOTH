module control_unit_tb;
  reg clk, rst_b, bgn, q_1, q0, count7;
  wire c0, c1, c2, c3, c4, c5, c6, stop;
  
initial begin
  #10
  clk = 0;
  rst_b = 0;
  bgn = 0; 
  q_1 = 0;
  q0 = 0;
  count7 = 0;
  
  #10
  clk = 1;
  rst_b = 1;
  
  #10
  clk = 0;
  
  #10 //ajungem in S1
  clk = 1;
  bgn = 1;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajugem in startea S2
  
  #10
  clk = 0;
  
  #10 //ajungem in S3
  clk = 1;
  q0 = 0;
  q_1 = 1;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S5
  
   #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S2
  
  #10
  clk = 0;
  
  #10 //ajungem in S4
  clk = 1;
  q0 = 1;
  q_1 = 0;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S5
  count7 = 1;
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S6
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S7
  
  #10
  clk = 0;
  
  #10
  clk = 1; //ajungem in S7
  
end
  control_unit inst(.clk(clk), .rst_b(rst_b), .bgn(bgn), .q0(q0), .q_1(q_1), .count7(count7),
  .c0(c0), .c1(c1), .c2(c2), .c3(c3), .c4(c4), .c5(c5), .c6(c6), .stop(stop));
endmodule
