`timescale 1ns/1ps
module testbench_counterh();
  reg D, E , Load, Clk;
  wire [4:0] Out;
  wire O_Carry;
  initial begin
  #0
    Clk = 0;   
    D = 1;
    E = 1;
    Load = 1;
    #10
    Load = 0;
    #50
    D = 0;
    #100 $stop;
  end
 always begin
   #5 Clk = ~Clk;
end
  counterh ins2(
                        .D(D),
                        .Load(Load),
                        .Clk(Clk),
                        .Out(Out),
                        .O_Carry(O_Carry),
                        .E(E)
  );
endmodule
//(Q, dau, carry,D,E,set,reset,CLK);

