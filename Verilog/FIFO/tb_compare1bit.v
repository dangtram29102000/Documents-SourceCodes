`timescale 1ns/1ns
module tb_compare1bit();
  reg A, B , G;
  wire E, M, L;
  initial begin
    A = 0;
    B = 0;
    G = 0;
    #40;
    G = 1;
    #40;
    A = 1;
    B = 1;
    #40;
    A = 0;
    B = 1;
    #40;
    A = 1;
    B = 0;
    #40;
    G = 0;
    #40;
    A = 1;
    B = 1;
    #40;
    A = 0;
    B = 1;
    #40;
    A = 1;
    B = 0;
    #40;
  end
  compare_1bit ins7(
  .A(A),
  .B(B),
  .G(G),
  .E(E),
  .M(M),
  .L(L)
  );
endmodule