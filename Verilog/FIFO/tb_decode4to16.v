`timescale 1ns/1ns
module tb_decode4to16();
  reg [3:0] A;
  reg en;
  wire [15:0] out;
  initial begin
    A = 0;
    en = 1;
    #100;
    A = 4'd1;
    #100;
    A = 4'd2;
    #100;
    A = 4'd3;
    #100;
    A = 4'd4;
    #100;
    A = 4'd5;
    #100;
    A = 4'd6;
    #100;
    A = 4'd7;
    #100;
    A = 4'd8;
    #100;
    A = 4'd9;
    #100;
    A = 4'd10;
    #100;
    A = 4'd11;
    #100;
    A = 4'd12;
    #100;
    A = 4'd13;
    #100;
    A = 4'd14;
    #100;
    A = 4'd15;
    #100;
  end
  decode4to16 ins4(
  .A(A),
  .en(en),
  .out(out)
  );
endmodule
    
