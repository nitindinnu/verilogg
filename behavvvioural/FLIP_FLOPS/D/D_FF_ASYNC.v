module D_FF_ASYNC (
    input d,clk,async_reset,output reg q,qb
);

    always @(posedge clk,negedge async_reset) begin
        if (async_reset) begin
            {q,qb}=2'b01;
        end else begin
            q <= d;
            qb <= ~d;
        end
    end
endmodule

module D_FF_ASYNC_tb (
    
);  reg d,clk,async_reset;
    wire q,qb;

    initial begin
        d=1;
        async_reset=0;
        clk=0;
        async_reset=0;
        forever #5 clk=~clk;
    end
    always #4 d=~d;
    always #10 async_reset=~async_reset;
    initial #200 $stop;

    D_FF_SYNC a1(d,clk,async_reset,q,qb);
endmodule //D_FF_SYNC

