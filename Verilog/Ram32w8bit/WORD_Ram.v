module WORD_Ram (O,Row_S,W_EN,I)	;
input [7:0] I;
input W_EN,Row_S;
output [7:0] O;

Ram_Cell m_c[7:0](O[7:0],Row_S,I[7:0],W_EN);

endmodule
 