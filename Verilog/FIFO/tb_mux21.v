`timescale 1ns/1ns
module tb_mux21();
  reg gate_0, gate_1, s;
  wire out;
  initial begin
    gate_0 = 1;
    gate_1 = 0;
    s = 1;
    #40;
    s = 0;
    #40;
    gate_0 = 0;
    gate_1 = 1;
    s = 1;
    #40;
    s = 0;
  end
  MUX2_1 ins1(
            .gate_0(gate_0),
            .gate_1(gate_1),
            .s(s),
            .out(out)
        );
endmodule
  
