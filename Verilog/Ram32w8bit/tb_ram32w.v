`timescale 1ns/1ps
module tb_ram32w();
  reg [4:0] W_S;
  reg W_EN, RWS, CS;
  reg [7:0] IN_data;
  wire [7:0] IO;
  integer i;
  reg tmp = 1;
  assign #10 IO = (RWS == 1) ? IN_data : 8'hzz;
  initial begin 
    W_S = 0;
    W_EN = 1;
    RWS = 1;
    CS = 1;
    IN_data = 0;
    for (i = 0; i < 20; i = i+1)
    begin
      #50; 
      W_S = i;
      IN_data = $random;
    end
    tmp = 0;
    RWS = 0;
    for (i = 0; i < 20; i = i+1)
    begin
      #50;
      W_S = i;
    end
    $finish;
  end
  always@(IN_data) begin
		if(tmp == 1) begin
			#5;
			RWS = 1'b1;
			#40;
			RWS = 1'b0;
		end
	end
  Ram32w_8bit ins14(
  .W_EN(W_EN),
  .CS(CS),
  .RWS(RWS),
  .W_S(W_S),
  .IO(IO)
  );
endmodule
    