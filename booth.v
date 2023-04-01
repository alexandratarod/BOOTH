module booth(
  input clk, bgn, rst_b,
  input[7:0] ibus, 
  output stop, 
  output [7:0] obus
  
);
 
wire c0, c1, c2, c3, c4, c5, c6,count7, a_lsb, q_1;
wire [7:0] out_parallel;
wire [7:0] out_xor;
wire [7:0] a, m, q;



reg_m leg1(.clk(clk), .rst_b(rst_b), .c0(c0), .ibus(ibus), .q(m));

reg_a leg4(.clk(clk), .rst_b(rst_b), .c0(c0), .c2(c2), .c4(c4), .c5(c5), 
          .sum(out_parallel), .q(a), .obus(obus));
reg_q leg3( .clk(clk), .rst_b(rst_b), .c1(c1), .c4(c4), .c6(c6), .q(q), .a(a), .ibus(ibus), .obus(obus));
reg_q_1 leg5(.clk(clk), .rst_b(rst_b), .c0(c0), .c4(c4), .q_lsb(q[0]), .q(q_1));
counter leg6(.clk(clk), .rst_b(rst_b), .c0(c0), .c4(c4), .count7(count7));
control_unit leg7(.clk(clk), .rst_b(rst_b), .bgn(bgn), .q_1(q_1), .q0(q[0]), .count7(count7),
              .c0(c0), .c1(c1), .c2(c2), .c3(c3), .c4(c4), .c5(c5), .c6(c6), .stop(stop));
xor_gate leg8(.c3(c3), .m(m), .rez(out_xor));
parallel_adder leg9(.x(out_xor), .y(a), .c3(c3), .out(out_parallel));








//adder_xor leg2(.x(m), .y(a), .c3(c3), .out(out_parallel));
              
//wire [7:0] m, a, out_parallel;
//wire q_lsb, q_1, count7;
/*
reg_m leg1( .clk(clk), .rst_b(rst_b), .c0(clk), .ibus(ibus), .q(m));
adder_xor leg2(.x(m), .y(a), .c3(clk), .out(out_parallel));
reg_a leg4(.clk(clk), .rst_b(rst_b), .c0(clk), .c2(clk), .c4(clk), .c5(clk), 
          .sum(out_parallel), .a_lsb(out_parallel[0]), .q(a), .obus(obus));
reg_q leg3( .clk(clk), .rst_b(rst_b), .c1(clk), .c4(clk), .c6(clk), .a_lsb(out_parallel[0]), .q_lsb(q_lsb), .ibus(ibus), .obus(obus));
reg_q_1 leg5(.clk(clk), .rst_b(rst_b), .c0(clk), .c4(clk), .q_lsb(q_lsb), .q(q_1));
counter leg6(.clk(clk), .rst_b(rst_b), .c0(clk), .c4(clk), .count7(count7));
control_unit leg7(.clk(clk), .rst_b(rst_b), .bgn(bgn), .q_1(q_1), .q0(q_lsb), .count7(count7),
              .c0(clk), .c1(clk), .c2(clk), .c3(clk), .c4(clk), .c5(clk), .c6(clk), .stop(stop));
              
              */
endmodule