module reg_q_1(
  input clk, rst_b, c0, c4, 
  input wire q_lsb,
  output reg q
);

always @(posedge clk, negedge rst_b) begin
  if(!rst_b)
    q <= 0;
  else if(c0)
    q <= 0;
  else if(c4)
    q <= q_lsb;
  end
  
endmodule