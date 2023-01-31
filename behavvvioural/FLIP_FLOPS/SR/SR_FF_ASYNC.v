module SR_FF_async ( //assynchronous flip flop : clock and reset are dependent on each other
    input s,r,clk,reset ,output reg q,qb
);

    initial begin
        q=0;
        qb=q;
    end

    always @(posedge clk,posedge reset) begin
        if (reset) begin //active high reset 
            {q,qb} <= 2'b01;
        end
        // if (!reset) begin //active low reset 
        //     {q,qb} = 2'b01;
        // end
        else begin
            case ({s,r})
                2'b00 : begin q<=q;qb<=qb ; end //no chnge
                2'b01 : begin q<=0;qb<=1; end //reset
                2'b10 : begin q<=1;qb<=0 ; end //set
                2'b11 : begin q<=1'bx;qb<=1'bx; end //invalid
                default:{q,qb} = 2'bxx; 
            endcase
        end
        
    end
endmodule

module sr_ff_async_tb (
    
);
    reg s,r,clk,reset ;
    wire q,qb;

    initial begin
    clk <=0;
    forever #5 clk=~clk;
    end

    initial begin
        reset <= 0;
        forever #5 reset=~reset;
    end

    initial begin
        {s,r} = 2'b00;
        forever begin
            #15 {s,r} = {s,r} + 1; 
        end
    end

    initial #100 reset = 1;
        

    SR_FF a1(s,r,clk,reset,q,qb);
endmodule

