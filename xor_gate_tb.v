module xor_gate_tb;
  reg [7:0] m;
  reg c3;
  wire [7:0] rez;
  
  initial begin
    #20
    m=7;
    c3 = 0;
    
    #20
    m=7;
    c3 = 1;
    
    #20;

  end
  
  xor_gate leg(.m(m), .c3(c3), .rez(rez));
  
endmodule