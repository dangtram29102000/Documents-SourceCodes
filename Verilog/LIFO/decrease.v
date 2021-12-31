module decrease(F,sub_OVF,A);

supply0  Cin;
input [4:0] A;


output [4:0] F;
output  sub_OVF;
//module FA_16bit(S,add_OVF,A,B,Cin);
FS_5bit fs (F[4:0],sub_OVF,A[4:0],5'b1,Cin);
endmodule