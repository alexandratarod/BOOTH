module fac(
  input x, y , cin,
  output out, cout
);

assign out = x ^ y ^ cin;
assign cout = cin & y | x & cin | x & y;

endmodule

