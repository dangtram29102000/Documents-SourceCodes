module counter (Y,carry,D,E,Reset,CLK);

input D,E,Reset,CLK;
output [4:0] Y;
output carry;
wire C1,C2,C3,C4;
wire  [4:0] Qi, Qn;


//module D_FF(q,rstn,d,clk);
D_FF Dff[4:0] (Y[4:0],Reset,Qi[4:0],CLK);
//d_type_ff_rst Dff[4:0] (Y[4:0], Qn[4:0], Qi[4:0], Reset, CLK);
//module has_t(Cin,Qi,Q,E,D);
HAS_tttt has_4(carry,Qi[4],Y[4],C4,D);
HAS_tttt has_3(C4,Qi[3],Y[3],C3,D);
HAS_tttt has_2(C3,Qi[2],Y[2],C2,D);
HAS_tttt has_1(C2,Qi[1],Y[1],C1,D);
HAS_tttt has_0(C1,Qi[0],Y[0],E,D);

endmodule