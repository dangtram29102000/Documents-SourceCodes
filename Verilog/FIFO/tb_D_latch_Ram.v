`timescale 1ns/1ns
module tb_D_latch_Ram();
  reg D, En;
  wire Q, Qn;
  initial begin
    En = 0;
    D = 0;
    #40;
    D = 1;
    #40;
    D = 0;
    En = 1;
    #40;
    D = 1;
    #40;
  end
  D_latch_Ram ins6(
  .D(D),
  .En(En),
  .Q(Q),
  .Qn(Qn)
  );
endmodule

    