`timescale 1ns/1ns
module tb_tri8bit();
  reg [7:0] I;
  reg EN;
  wire [7:0] Z;
  initial begin 
    I = 0;
    EN = 0;
    #100;
    EN = 1;
    I = $random;
    #100;
    I = $random;
    #100;
    I = $random;
    EN = 0;
    I = $random;
    #100;
    I = $random;
    #100;
    I = $random;
    #100;
  end
  tri_8bit ins13(
  .I(I),
  .Z(Z),
  .EN(EN)
  );
endmodule

    