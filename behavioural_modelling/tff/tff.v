module dut_tff (t,clk,clear,q,qb
    
);
    input t,clk,clear;
    output reg q,qb;

    always @(posedge clk ) begin
        if (clear==1'b1) begin
            q<=1'b0;qb<=1'b1;
        end
        else if (t==1'b0) begin
            q<=q;qb<=qb;
        end
        else begin
            q<=qb;qb<=q;
        end
    end
endmodule

//tb
module tff_tb (
    
);
  
    reg t,clk,clear;
    wire q,qb;

    initial begin
        clk=1'b0;
        t=1'b0;
        clear=1'b1;

    end
    initial #20 clear=~clear;
    always #2 t=~t;
    always #5 clk=~clk;
  
    dut_tff tff01(t,clk,clear,q,qb);
endmodule