module reg_q(
  input clk, rst_b, c1, c4, c6, 
  input [7:0] ibus, a,
  //input a_lsb,
  //output reg q_lsb,
  output reg [7:0] obus, q
);

//reg [7:0] q;

 reg q_lsb;

//reg_a l1 (.clk(clk), .rst_b(rst_b), .q(a));
always @(posedge clk, negedge rst_b) begin
  if(!rst_b)
    q <= 0;
  else if (c1)
    begin
    q <= ibus;
    q_lsb <= q[0];
  end
  else if(c4) 
    begin
        q_lsb <= q[0];
        q <= (q >> 1);
        q[7] <= a[0];
      end

end


always @(*) begin
  if(c6) 
    obus = q;
  else obus = 8'bz;
  
end

endmodule
