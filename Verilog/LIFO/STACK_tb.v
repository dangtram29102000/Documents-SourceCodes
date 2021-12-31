`timescale 1ns/1ps
module STACK_tb ();
  
  reg CLK,PUSH_POP,EN,W_EN,RESET,RW;
  reg [7:0] DATA_IN;
  wire EMPTY,FULL;
  wire [4:0] R, V;
  wire  [7:0] IO;
  reg tmp;
  assign IO = (PUSH_POP == 0) ? DATA_IN: 8'hzz;
  
  initial begin
    CLK = 0;
    PUSH_POP = 0;
    RESET = 1;
    W_EN = 1;
    EN = 1;
    RW = 1;
    tmp = 1;
    #5;
    DATA_IN = $random;
    #5;
    RESET = 0;
    #5;
    //DATA_IN = $random;
    /*#10;
    DATA_IN = $random;
    #10;
    DATA_IN = $random;
    #10;
    DATA_IN = $random;*/
    repeat(10)@(posedge CLK) 
		  begin
			 #1 DATA_IN = DATA_IN + 3;
		  end
		tmp = 0;
		PUSH_POP =1;
		RW = 0;
    #100;  
    //RW = 0;
    $finish;
end
	always begin
		#5 CLK <= ~CLK;	
	end
//RW nhay mua nhap nho
	always@(posedge CLK) begin
	  if(tmp == 1) begin
		  #1 RW = 1;
		  #5 RW = 0;
		end
	end

  LIFO ins2(	
		.IO(IO),
                .EMPTY(EMPTY),
                .FULL(FULL),
                .CLK(CLK),
                .RESET(RESET),
                .EN(EN),
		.PUSH_POP(PUSH_POP),
		.V(V),
		.R(R),
		.W_EN(W_EN),
		.RW(RW)
                );
endmodule
  
  