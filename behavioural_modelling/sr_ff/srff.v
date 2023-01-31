module srff_dut (
    s,r,clk,clear,q,qb
);
    input s,r,clk,clear;
    output reg q,qb;

    always @(posedge clk ) begin
        if(clear==1'b1)begin
            // q<=1'b0;qb=1'b1;
            {q,qb} = 2'b01;
        end

        else begin
            case ({s,r})
                default : {q,qb} = 2'bxx;
                2'b00 : begin q<=q;qb<=qb; end
                2'b01 : begin q<=0;qb<=1; end
                2'b10 : begin q<=1;qb<=0; end
                2'b11 : begin q<=1'bx;qb<=1'bx; end
            endcase
        end
    end
endmodule

//tb 
module srff_tb (
    
);
    reg s,r,clk,clear;
    wire q,qb;

    initial begin
        clk=1'b0;
        clear=1'b1;
        {s,r} = 2'b00;
    end
    initial #30 clear=~clear;
    always #1 clk=~clk;
    always #2 {s,r}={s,r}+1'b1;
    // always #2 {s,r}=~{s,r}; // ---> only supported for 1bit variable

    srff_dut  a01(s,r,clk,clear,q,qb);
endmodule