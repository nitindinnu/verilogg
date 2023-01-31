module SR_to_D_FF (
    input d,clk,reset , output q,qb
);
    not a1(dbar,d);
    SR_FF a2(d,dbar,clk,reset,q,qb);
endmodule //SR_to_D_FF

module SR_to_D_FF_SYNC_tb (
    
);  reg d,clk,reset;
    wire q,qb;

    initial begin
        d=1;
        reset=0;
        clk=0;
        forever begin
            #10 clk=~clk;
        end
    end

    initial #100 reset=1;
    always #4 d=~d;

    SR_to_D_FF a(d,clk,reset,q,qb);
endmodule //D_FF_SYNC
