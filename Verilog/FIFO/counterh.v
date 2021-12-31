module counterh (Out, O_Carry, D, E, Load, Clk);
	output [4:0] Out;
	output O_Carry;
	input D, E, Load, Clk;
	wire a;
	wire [5:0] has_out;
	wire [5:0] has_cout;
	wire [5:0] mux_out;
	wire [5:0] D_FF_Qn;
	
	//has_t(Cin,Qi,Q,E,D);
	//HAS (out, cout, d, cin, q, q_bar);
	HAS hasi1 (has_out[0], has_cout[0], D, E, Out[0], D_FF_Qn[0]);
	HAS hasi2[4:1] (has_out[4:1], has_cout[4:1], D, has_cout[3:0], Out[4:1], D_FF_Qn[4:1]);
	HAS hasi3 (has_out[5], O_Carry, D, has_cout[4], a, D_FF_Qn[5]);
	
	//Mux2to1 (Y, I0, I1, S);
	Mux2to1 Mux2to1_inst [5:0] (mux_out[5:0], has_out[5:0], 6'b0, Load);
	
	//D_ff (Q, Qn, C, D);
	D_ff dff_inst [5:0] ({a,Out[4:0]}, D_FF_Qn[5:0], Clk, mux_out[5:0]);
	
endmodule


	
	
	
