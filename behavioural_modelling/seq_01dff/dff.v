module dff_dut (
    q,qb,d,clk,clear
);
    output reg q,qb;
    input d,clk,clear;
    always @(posedge clk ) begin
        if(clear==0) begin
            q<=0;
            qb<=1;
        end
        
        else begin
            q<=d;
            qb<=~d;
        end 
    end
    // always @(posedge clk) begin
    //     q<=d;
    // end
    // assign qb=~q;
endmodule


//tb
module tb_dff (
    
);
    wire q,qb;
    reg d,clk,clear ;

    initial begin
        d=1'b0;
        clk=1'b0;
        clear=1'b1;
    end
    always #2 d=~d;
    initial #50 clear=1'b0;
    always #5 clk=~clk;

    // initial begin
    //     clk=0;
    //     forever #2 clk=~clk;
    // end
    // initial begin
    //     #5;
    //     d=0;#5;
    //     d=1;#5;
    //     d=0;#5;
    //     d=1;#5;
    // end
    // initial #10 clear=1'b0;

    dff_dut dff01(q,qb,d,clk,clear) ;
endmodule
