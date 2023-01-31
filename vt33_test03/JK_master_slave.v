module jk_flip_flop_master_slave(Q, Qb, C, J, K, RESETn);
   output Q,Qb;
   input  C,J,K, RESETn; 
   
   wire   MQ,MQb,cnot,J1,K1,J2,K2;  

   assign J2 = !RESETn ? 0 : J1;  
   assign K2 = !RESETn ? 1 : K1;  
   
   and(J1, J, Qb);
   and(K1, K, Q);   
   not(cnot, C);   
   sr_latch_gated master(MQ, MQb, C, J2, K2);
   sr_latch_gated slave(Q, Qb, cnot, MQ, MQb);   
endmodule // jk_flip_flop_master_slave

module sr_latch_gated(Q, Qb, G, S, R);
   output Q,Qb;
   input  G,S,R;
   
   wire   S1,R1;
   
   and(S1, G, S);
   and(R1, G, R);   
   nor(Qb, S1, Q);
   nor(Q, R1, Qb);
endmodule // sr_latch_gated

module tb_jk_masterslave (
);
    reg j,k,clk,reset;
    wire q,qb;

    initial begin
        clk=0;
        reset=0;
        {j,k} =2'b00;
        forever #20 {j,k}={j,k}+1;
    end
    always #10 clk=~clk;
    initial #50 reset=1;

    jk_flip_flop_master_slave a1(.Q(q),.Qb(qb),.C(clk),.RESETn(reset),.J(j),.K(k));
endmodule



