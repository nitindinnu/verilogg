module D_FF_SYNC (
    input d,clk,sync_reset,output reg q,qb
);

    always @(posedge clk) begin
        if (sync_reset) begin
            {q,qb}=2'b01;
        end else begin
            q <= d;
            qb <= ~d;
        end
    end
endmodule

module D_FF_SYNC_tb (
    
);  reg d,clk,sync_reset;
    wire q,qb;

    initial begin
        d=1;
        sync_reset=0;
        clk=0;
        forever begin
            #10 clk=~clk;
        end
    end

    initial #100 sync_reset=1;
    always #4 d=~d;
    initial #200 $stop;

    D_FF_SYNC a1(d,clk,sync_reset,q,qb);
endmodule //D_FF_SYNC
