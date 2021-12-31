module Ram_Cell(out,Row_S,Input,W_EN);

input Row_S,Input,W_EN;
output out;
wire A,Q;
wire Qn;

and a(A,Row_S,W_EN);
//module D_latch(Q,Qn,D,CLK);
//module D_latch ( D,  Enable,  Q);
//D_latch d(Q,Qn,Input,A);
D_latch_Ram d(Q,Qn,Input,A);

bufif1 buf1(out,Q, Row_S);
endmodule