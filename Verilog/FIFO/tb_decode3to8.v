`timescale 1ns/1ns
module tb_decode3to8();
  reg [2:0] A;
  reg en;
  wire [7:0] out;
  initial begin
    A = 0;
    en = 1;
    #100;
    A = 3'd1;
    #100;
    A = 3'd2;
    #100;
    A = 3'd3;
    #100;
    A = 3'd4;
    #100;
    A = 3'd5;
    #100;
    A = 3'd6;
    #100;
    A = 3'd7;
    #100;
  end
  decode3to8 ins3(
  .A(A),
  .en(en),
  .out(out)
  );
endmodule
    