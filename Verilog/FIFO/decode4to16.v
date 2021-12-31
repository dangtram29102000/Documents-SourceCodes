module decode4to16 (out,A,en);
input [3:0]A;
input en;
output [15:0]out;
wire n0;
wire [15:0]y;

not not1(n0,A[3]);
//module decode3to8_h (out,A,en);
decode3to8 decode3to8_1 (y[7:0],A[2:0],n0);
decode3to8 decode3to8_2 (y[15:8],A[2:0],A[3]);

and and1[15:0](out[15:0],y[15:0],en);

endmodule