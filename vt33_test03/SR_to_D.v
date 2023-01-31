module SR_FF(
    input s,r,clk,reset,output reg q,qb
);
    // initial begin
    //     q=0;
    //     qb=~q;
    // end

    always @(posedge clk ) begin
        if(reset)begin
            {q,qb}= 2'b01;
        end
        else begin
            case ({s,r})
                2'b00: begin q<=q ; qb<=~q ;end
                2'b01: begin q<=0 ; qb<=1 ;end
                2'b10: begin q<=1 ; qb<=0 ;end
                2'b11: begin q<=1'bx ; qb<=1'bx ;end
                default : {q,qb} <= 2'bxx;
            endcase
        end
    end

endmodule

module SR_to_D(
    input d,clk,reset,output q,qb
);
    not a1(dnot,d);
    SR_FF hh(d,dnot,clk,reset, q,qb);
endmodule


module SR_to_D_tb(
);
    reg d,clk,reset;
    wire q,qb;
    initial begin
        reset=0;
        {d,clk}<=0;
        forever begin
            #10 clk=~clk;
        end
    end
    always #3 d=~d;
    initial #100 reset=1;
    SR_to_D as(d,clk,reset,q,qb);
endmodule