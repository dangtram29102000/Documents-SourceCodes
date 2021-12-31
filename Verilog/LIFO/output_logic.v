module output_logic(EMPTY,FULL,Y);

output EMPTY;
output FULL;
input [4:0] Y;
/*wire Z,Q,R,F,X,C,V;

or O1(Z,Y[0],Y[1]);
or O2(Q,Z,Y[2]);
or O3(R,Q,Y[3]);
or O4(F,R,Y[4]);

not N(EMPTY,F);

and A1(X,Y[0],Y[1]);
and A2 (C,X,Y[2]);
and A3 (V,C,Y[3]);
and A4 (FULL,V,Y[4]);*/
assign EMPTY = !(Y[0] | Y[1] | Y[2] | Y[3] | Y[4]);
assign FULL = Y[0] & Y[1] & Y[2] & Y[3] & Y[4];
endmodule