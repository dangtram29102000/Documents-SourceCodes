module D_flipflop_synch(Q, Qn, CLK, D);
   output Q;
   output Qn;
   wire Q, Qn;
   input  CLK;
   input  D;
 
   wire CLK,D;	


   wire   Cn;
   wire   Cnn;
   wire   DQ;
   wire   DQn;
   
   not(Cn, CLK);
   not(Cnn, Cn);   
   D_Latch dl(DQ, DQn, Cn, D);
   SR_Latch sr1(Q, Qn, Cnn, DQ, DQn);   
endmodule

module D_Latch(Q, Qn, G, D);
   output Q;
   output Qn;
   input  G;   
   input  D;

   wire   Dn; 
   wire   D1;
   wire   Dn1;

   not(Dn, D);   
   and(D1, G, D);
   and(Dn1, G, Dn);   
   nor(Qn, D1, Q);
   nor(Q, Dn1, Qn);
endmodule

module SR_Latch(Q, Qn, G, S, R);
   output Q;
   output Qn;
   input  G;   
   input  S;
   input  R;

   wire   S1;
   wire   R1;
   
   and(S1, G, S);
   and(R1, G, R);   
   nor(Qn, S1, Q);
   nor(Q, R1, Qn);
endmodule

