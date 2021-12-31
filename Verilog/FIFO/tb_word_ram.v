`timescale 1ns/1ns
module tb_word_ram();
  reg [7:0] I;
  reg W_EN, Row_S;
  wire [7:0] O;
  initial begin
    I = 0;
    W_EN = 0;
    Row_S = 0;
    $40;
    W_EN = 1;
    #40;
    I =7'd16;
    Row_S = 1;
    #40;
    Row_S = 0;
    #40;
  end
  WORD_Ram ins11(
  .I(I),
  .W_EN(W_EN),
  .Row_S(Row_S),
  .O(O)
  );
endmodule
  