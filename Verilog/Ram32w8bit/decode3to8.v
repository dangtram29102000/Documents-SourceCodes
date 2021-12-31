module decode3to8 (out,A,en);
input [2:0]A;
input en;
output [7:0]out;
wire [7:0]Y;
wire n1,n0,n2;

not not1(n0,A[0]);
not not2(n1,A[1]);
not not3(n2,A[2]);

and and1(Y[0],n2,n1,n0);
and and2(Y[1],n2,n1,A[0]);
and and3(Y[2],n2,A[1],n0);
and and4(Y[3],n2,A[1],A[0]);
and and5(Y[4],A[2],n1,n0);
and and6(Y[5],A[2],n1,A[0]);
and and7(Y[6],A[2],A[1],n0);
and and8(Y[7],A[2],A[1],A[0]);

and and9[7:0](out[7:0],Y[7:0],en);

endmodule