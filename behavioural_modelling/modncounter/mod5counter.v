module mod4count (
    out,reset,clk,mode
);
    output reg [3:0]out;
    input reset,mode,clk;

    always @(posedge clk ) begin
        case({reset,mode})
        2'b11:out=0;
        2'b10:out=0;
        2'b01:out=out-1; // down counter
        2'b00:out=out+1; // up counter
        endcase
    end
endmodule

//tb 
module tb_mod4counter (
    
);
    wire [3:0]out;
    reg reset,mode,clk;
    initial begin
        reset=1;
        clk=1;
        mode=0;
        #30;
        reset=0;
        mode=0;
        #60;
        reset=0;
        mode=1;
    end
    always #5 clk=~clk;

    mod4count a1(out,reset,clk,mode);
endmodule