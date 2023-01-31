module JK_FF_SYNC (
    input j,k,clk,sync_reset,output reg q,qb
);
    initial begin
        q=0;
        qb=~q;
    end

    always @(posedge clk) begin
    case ({j,k})
        2'b00 : begin q<=q ; qb<=~q ; end
        // 2'b00 : begin q<=q ; qb<=qb ; end
        2'b01 : begin q<=0 ; qb<=1 ; end
        2'b10 : begin q<=1 ; qb<=0 ; end
        2'b11 : begin q<=~q ; qb<=~qb ; end
    endcase
  end
endmodule //JK_FF_SYNC

module tb_jk_ff_sync (
);
    reg j,k,clk,sync_reset;
    wire q,qb;

    initial begin
        #5;
        clk=0;
        sync_reset=0;
        j=0;k=0;#10;
        j=0;k=1;#10;
        j=1;k=0;#10;
        j=1;k=1;#10;
    end
    always #10 clk=~clk;
    initial #100 sync_reset=1;

    JK_FF_SYNC a1(j,k,clk,sync_reset,q,qb);
endmodule
