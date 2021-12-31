`timescale 1ns/1ns
module testbench();
  reg CLK, W_E, R_E;
  wire [7:0] Re_out;
  reg [7:0] I;
  reg [4:0] W_A;
  reg [4:0] R_A;
  integer i, j;
  initial begin
    //inputs
    I = 8'b0;
    W_A = 5'b0;
    R_A = 5'b0;
    W_E = 1;
    R_E = 0;
    CLK = 0;
  end
  
  always 
  begin
    #50 CLK = ~CLK;
  end
  
  always@(W_E) 
  begin
	 #3200 W_E = ~W_E;
	 R_E = ~R_E;
	end
	
initial begin
    while(W_E == 1) begin
      for(i = 0; i < 32; i = i+1) begin
        #100 I = $random;
        W_A = W_A + 1;
      end
    end
    while(R_E == 1) begin
      for(j = 0; j<32; j=j+1) begin
        #100 R_A = R_A + 1;
      end
      $finish;
    end
  end
  RF_post ins1(
                  .CLK (CLK),
                  .W_E (W_E),
                  .R_E (R_E),
                  .Re_out (Re_out),
                  .I (I),
                  .W_A (W_A),
                  .R_A (R_A)
  ); 
endmodule


    
    
    
    
    
    








