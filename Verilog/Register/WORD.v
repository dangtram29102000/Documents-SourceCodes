module WORD(O, R_S, W_S, I, CLK);
	//i/o ports
	input [7:0] I;
	input R_S, W_S, CLK;
	output [7:0] O;
	//internal wires declaration
	wire [7:0] I;
	wire [7:0] O;
	RegisterFile RF[7:0](O[7:0], R_S, W_S, I[7:0], CLK);
endmodule

	
	