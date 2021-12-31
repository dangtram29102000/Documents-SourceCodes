`timescale 1ns/1ns
module tb_mux21_5bit();
  reg [4:0] g_0, g_1;
  reg s;
  wire [4:0] mux_out;
  initial begin
    g_0 = $random;
    g_1 = $random;
    s = 1;
    #40;
    s = 0;
    #40;
    g_0 = $random;
    g_1 = $random;
    s = 1;
    #40;
    s = 0;
  end
  mux21_5bit ins2(
            .g_0(g_0),
            .g_1(g_1),
            .s(s),
            .mux_out(mux_out)
        );
endmodule