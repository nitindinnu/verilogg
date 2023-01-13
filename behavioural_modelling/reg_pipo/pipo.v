module pipo_dut (
    clear,clk,data,q
);
    input clear,clk;
    input [3:0]data;
    output reg [3:0]q;

    always @(posedge clk ) begin
        if(clear==1)
            q=4'b0000;
        else begin
            q=data;
        end
    end
endmodule

//tb
module pipo_tb (
    
);
    reg clear,clk;
    reg [3:0]data;
    wire [3:0] q;
    
    initial begin
        clear=1;
        clk=0;
        data=4'b1010;
        #10;
        data=4'b1110;
        #10;
        data=4'b1000;
    end
    always #5 clk=~clk;
    initial #10 clear =~clear;
    initial #100 $stop;
    pipo_dut iop_a(clear,clk,data,q);
endmodule
