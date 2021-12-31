`timescale 1ns/1ns
module testbench_counter();
  reg D, E , reset, CLK;
  wire [4:0] Q;
  wire dau;
  initial begin
    D = 0;
    E = 0;
    CLK = 0;
    reset = 1;
    #100;
    reset = 0;
    #30;
    E = 1;
  end
  always begin
  #50;
  CLK <= ~CLK;
  end
  Counter_6bit ins2(
                        .D(D),
                        .CLK(CLK),
                        .reset(reset),
                        .Q(Q),
                        .dau(dau),
                        .E(E)
  );
endmodule 

    