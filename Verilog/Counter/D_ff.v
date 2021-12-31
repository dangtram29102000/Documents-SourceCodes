module D_ff(Q, Qn, C, D);
	output Q, Qn;
	input C, D;
	wire Q, Qn, C, D;
	wire Cn, Cnn, QM;
	
	not not1(Cn, C);
	not not2(Cnn, Cn);
	//D_Latch(Q, Qn, C, D)
	D_Latch dlatch_1(.Q(QM), .Qn(), .C(Cn), .D(D));
	D_Latch dlatch_2(.Q(Q), .Qn(Qn), .C(C), .D(QM));
endmodule
