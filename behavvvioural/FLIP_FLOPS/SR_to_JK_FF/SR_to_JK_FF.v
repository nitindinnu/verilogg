module SR_to_JK_FF (
    input j,k,clk,reset ,output q,qb
);
    SR_FF a1(s,r,clk,reset,q,qb);
    and(s,j,qb);
    and(r,k,q);
    
endmodule //SR_to_JK_FF

module SR_to_JK_FF_tb ();
    reg j,k,clk,reset;
    wire q,qb;

    initial begin
        #5;
        clk=0;
        reset=0;
        j=0;k=0;#10;
        j=0;k=1;#10;
        j=1;k=0;#10;
        j=1;k=1;#10;
    end
    always #10 clk=~clk;
    initial #100 reset=1;

    SR_to_JK_FF a1(j,k,clk,reset ,q,qb);

endmodule //SR_to_JK_FF
