module D_Latch(Q, Qn, C, D);
	output Q, Qn;
	input C, D;
	
	wire outnand1, outnand2;
	
	nand nand1(outnand1, C, D);
	nand nand2(outnand2, C, outnand1);
	nand nand3(Q, outnand1, Qn);
	nand nand4(Qn, outnand2, Q);
endmodule