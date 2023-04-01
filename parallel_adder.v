module parallel_adder(
  input [7  : 0] x, y, //x=M iesit din xor; y=A
  input c3, //carry in
  output  [7 : 0] out //suma tot pe 7 biti pt ca daca la adunare avem overflow nu ne intereseaza
);

wire [8 : 0] carry;


assign carry[0] = c3;


generate 
  genvar j;
    for(j = 0; j < 8; j = j + 1)
      begin : vect
        fac inst_fac(.x(x[j]), .y(y[j]), .out(out[j]), .cin(carry[j]), .cout(carry[j + 1]));
    end
endgenerate

//assign out[k] = carry[k];


endmodule
