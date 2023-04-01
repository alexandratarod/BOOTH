module parallel_adder_tb;
  reg [7:0] x, y;
  reg c3;
  wire [7:0] out;
  
  initial begin
    #10
    x=6;
    y=4;
    c3=1;
    
    #10
    x=6;
    y=4;
    c3=0;
    
    #10
    x=7;
    y=2;
    c3=1;
    
    #10
    x=7;
    y=2;
    c3=0;
    
    #10
    x=300;
    y=550;
    c3=0;
    
    #10;
  end
  
  parallel_adder inst1(.x(x), .y(y), .c3(c3), .out(out));
  
endmodule
