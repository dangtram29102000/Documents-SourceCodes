`timescale 1ns/1ns
module tb_d_ff_rst();
  reg clk, d, reset;
  wire q, q_bar;  
  initial begin
    clk = 0;
    d = 0;
    reset = 0;
    #150;
    reset = 1;
    #200;
    reset = 0;
  end
  always@(clk)
  #50 clk <= ~clk;
  initial begin
    repeat(5)@(posedge clk)
    begin
      #10 d = ~d;
    end
    #1000 $finish;
  end
d_type_ff_rst ins10(
  .clk(clk),
  .d(d),
  .q(q),
  .q_bar(q_bar),
  .reset(reset)
  );
endmodule

  
  