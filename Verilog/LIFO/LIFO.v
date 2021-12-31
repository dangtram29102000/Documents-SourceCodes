module LIFO(IO,V,R,EMPTY,FULL,RESET,PUSH_POP,RW, EN,W_EN,CLK);

inout [7:0] IO;
output EMPTY,FULL;
output [4:0] R, V;
input RESET,PUSH_POP,EN,W_EN, RW;
input CLK;

wire n0,n2,D,sel,x,carry,A3_out;
wire [4:0] TOP, TOPsub, Mux_out;
//wire [4:0] Y;


not N0(n0,PUSH_POP);
not N2(n2,D);

and A1(D,PUSH_POP,EN);
and A2(sel,n0,EN);
and A3(A3_out, EN, RW);
//module counter (Y,carry,D,E,Reset,CLK);
counterh C1(TOP[4:0],carry,D,EN,RESET,CLK);
assign  R = TOP;

//module decrease(F,sub_OVF,A);
decrease D1(TOPsub[4:0],x,TOP[4:0]);
assign  V = TOPsub;

//module mux2to1_5bit(F,G1,G0,sel);
mux2to1_5bit m21_5bit(Mux_out[4:0],TOP[4:0],TOPsub[4:0],sel);

//module output_logic(EMPTY,FULL,Y);
output_logic L(EMPTY,FULL,TOP[4:0]);

//module Ram32w_8bit(IO, W_S, W_EN, RWS, CS);
Ram32w_8bit ram (IO[7:0],Mux_out[4:0],W_EN,A3_out,EN);

endmodule