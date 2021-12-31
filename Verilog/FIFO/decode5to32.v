module decode5to32 (out,A,en);
input [4:0]A;
input en;
output [31:0]out;
wire n0;
wire [31:0]y;

not not1(n0,A[4]);
//module decode4to16_h (out,A,en);
decode4to16 decode4to16_1 (y[15:0],A[3:0],n0);
decode4to16 decode4to16_2 (y[31:16],A[3:0],A[4]);

and and1[31:0](out[31:0],y[31:0],en);

endmodule