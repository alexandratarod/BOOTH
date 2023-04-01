module adder_xor(
  input [7  : 0] x, y, //x=M; y=A
  input c3,
  output  [7 : 0] out
);

wire [8 : 0] carry;
wire [7:0] out_xor;



generate 
  genvar i;
    for(i = 0; i < 8; i = i + 1)
      begin : vecti
        xor_m_c3 inst_xor(.m(x[i]), .c3(c3), .out(out_xor[i]));
    end
endgenerate

assign carry[0] = c3;


generate 
  genvar j;
    for(j = 0; j < 8; j = j + 1)
      begin : vectj
        fac inst_fac(.x(out_xor[j]), .y(y[j]), .out(out[j]), .cin(carry[j]), .cout(carry[j + 1]));
    end
endgenerate

//assign out[k] = carry[k];


endmodule
