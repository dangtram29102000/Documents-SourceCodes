`timescale 1ns/1ns
module tb_compare5bit;
  reg [4:0] A, B;
  reg G;
  wire E;
  initial begin
    A = 0;
    B = 0;
    G = 0;
    #40;
    G = 1;
    #40;
    A = $random;
    B = $random;
    #40;
    A = $random;
    B = $random;
    #40;
    A = 4'd20;
    B = 4'd20;
    #40;
    G = 0;
    #40;
    G = 1;
    A = $random;
    B = $random;
    #40;
    A = $random;
    B = $random;
    #40;
    A = $random;
    B = $random;
    #40;
  end
  compare_5bit ins8(
  .A(A),
  .B(B),
  .G(G),
  .E(E)
  );
endmodule