//grey counter
module up_counter #(parameter bit_size = 3) (
    input clk,reset,output reg[bit_size-1:0] g,b
);  
    initial begin g=0;b=0; end
    always @(posedge clk ) begin
        if (reset) begin
            b<=0;
            g<=0;
        end
        else begin
            b = b+1;
            // g = g+(g^b>>1);
            g <= b ^ b>>1;
        end
    end
endmodule

module up_count_tb (
);
    reg clk,reset;
    wire [2:0] g,b;

    initial begin
        // {reset,clk}<=0;
        reset=0;
        clk=0;
        forever #2 clk=~clk;
    end
    initial #50 reset=1;
    // always #5 {a,b,c}= {a,b,c}+1;

    up_counter ll(clk,reset,g,b);
endmodule
