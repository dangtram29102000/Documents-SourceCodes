`timescale 1ns/1ns
module tb_ram_cell();
 reg Row_S, Input, W_EN;
 wire out;
 initial begin
   Row_S = 0;
   Input = 0;
   W_EN = 0;
   #40;
   W_EN = 1;
   #40;
   Input = 1;
   Row_S = 1;
   #40;
   Row_S = 0;
   #40;
 end
 Ram_Cell ins10(
 .Row_S(Row_S),
 .Input(Input),
 .W_EN(W_EN),
 .out(out)
 );
 endmodule
 
  