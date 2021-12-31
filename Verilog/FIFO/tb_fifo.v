`timescale 1ns/1ps
module tb_fifo();
	reg D,E,Load,RW,RW1,Clk;
 	 reg [7:0] IN_data;	
	wire [4:0]front,back;
	wire Empty,Full;
	 wire [7:0] IO;
	 reg tmp = 1;
	assign   IO = (RW==1) ? IN_data : 8'hzz;
initial begin
	Clk=0;
	D=0;
	E=1;
	RW =1;
	RW1=1;
	Load =1;
	#5
	IN_data = 8'd10;
	#5;
	Load=0;
	#5
	/*IN_data = 8'd12;
	#10;
	IN_data = 8'd14;
	#10;
	IN_data = 8'd16;*/
	repeat(20)@(posedge Clk)
		begin
			#1 IN_data = IN_data + 2;
		end
	tmp = 0;
	RW =0;
	RW1=0;
	#220 $stop;
end
always 
begin
   #5 Clk <= ~Clk;
end
always@(posedge Clk) begin
		if(tmp == 1) begin
			#1;
			RW1 = 1'b1;
			#6;
			RW1 = 1'b0;
		end
	end
counter_dual ins21(
	.RW1(RW1),
	       .IO(IO),
	       .RW(RW),
                        .D(D),
                        .Load(Load),
                        .Clk(Clk),
                        .front(front),
	       .back(back),
	       .Empty(Empty),
	       .Full(Full),
                        .E(E)
  );
endmodule

