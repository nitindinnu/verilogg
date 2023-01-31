module SR_LATCH_gated_nand (
    inout q,qb,input en,s,r
);
    wire s1,r1;
    and(s1,en,s);
    and(r1,en,r);
    nand(qb,r1,q);
    nand(q,s1,qb); 
    // nor(qb, s1, q);
    // nor(q, r1, qb);
    // assign q =  s | ((~r)&q); //
    // assign qb=  ~q ;
endmodule //JK_MASTER_SLAVE

module JK_MASTER_SLAVE (
    output q,qb,input clk,reset,j,k //active high reset
);
    wire j1,k1,j2,k2;
    and(j1,j,qb); //j input of 1st latch
    and(r1,r,q); // r input of 1st latch
    not(clknot,clk);
    assign j2= reset ? 0:j1;
    assign k2= reset ? 1:k1;
    SR_LATCH_gated_nand  master(Mq,Mqb,clk,j2,k2);
    SR_LATCH_gated_nand slave(q,qb,clknot,Mq,Mqb);
endmodule //JK_MASTER_SLAVE

// module JK_MASTER_SLAVE (
//     output q,qb,input clk,reset,j,k //active low reset
// );
//     wire j1,r1,j2,k2;
//     and(j1,j,qb); //j input of 1st latch
//     and(r1,r,q); // r input of 1st latch
//     not(clknot,clk);
//     assign j2= !reset ? 0:j1;
//     assign k2= !reset ? 1:k1;
//     SR_LATCH_gated_nand master(Mq,Mqb,clk,j2,k2);
//     SR_LATCH_gated_nand  slave(q,qb,clknot,Mq,Mqb);
// endmodule //JK_MASTER_SLAVE

module tb_jk_masterslave (
);
    reg j,k,clk,reset;
    wire q,qb;

    initial begin
        #5;
        clk=0;
        reset=0;
        j=0;k=0;#50;
        j=0;k=1;#50;
        j=1;k=0;#50;
        j=1;k=1;#50;
    end
    always #10 clk=~clk;
    initial #300 reset=1;

    JK_MASTER_SLAVE a1(q,qb,clk,reset,j,k);
endmodule
