`timescale 1ns/1ns
module sr_latch(q, q_bar, r, s);
   output q;
   output q_bar;
   input  s;
   input  r;

   nor #1(q_bar, s, q);
   nor #1(q, r, q_bar);
endmodule 


module d_latch(clk,q,q_bar,d);
  output q, q_bar;
  input clk,d;
  wire d_bar,r,s;

  sr_latch A(q, q_bar, r, s);

  not (d_bar, d);
  and (s, d, clk);
  and (r, d_bar, clk);

endmodule


module d_type_ff (clk, d, q, q_bar);
  output q, q_bar;
  input clk, d;
  wire d1, d2, clk_bar;

  d_latch Master(clk_bar, d1, d2, d);
  d_latch Slave(clk, q, q_bar, d1);

  not(clk_bar, clk);

endmodule

module d_type_ff_rst (q,q_bar,d,reset,clk);
    output q;
    output q_bar;
    input clk, d, reset;
    wire d_in, rst_bar;

    d_type_ff A(clk, d_in, q, q_bar);

    not(rst_bar, reset);
    and(d_in, rst_bar, d);

endmodule