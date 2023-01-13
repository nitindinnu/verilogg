//dut
module jkflipflop (
    j,k,clk,q,qb
);
    input j,k,clk;
    output reg q,qb;

    initial begin
        q=0;
        assign qb=~q;
    end
    always @(posedge clk) begin
        case({j,k})
            2'b00:begin
                q<=q;qb<=~q;
            end
            2'b01 : begin
                q<=0;qb<=1;
            end
            2'b10 : begin
                q<=1;qb<=0;
            end
            2'b11 : begin
                q<=~q;qb<=~qb;
            end
        endcase
    end
endmodule

//testbench
module tb_jk (
);
    reg j,k,clk;
    wire q,qb;

    initial begin
        #5;
        clk=0;
        j=0;k=0;#10;
        j=0;k=1;#10;
        j=1;k=0;#10;
        j=1;k=1;#10;
    end
    always #10 clk=~clk;

    jkflipflop a1(j,k,clk,q,qb);
endmodule
