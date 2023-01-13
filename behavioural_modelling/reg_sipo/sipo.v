module sipo_dut (
    clear,clk,data,q
);
    input clear,clk,data;
    output reg [3:0]q;
    reg [3:0]temp;

    always @(posedge clk ) begin
        if(clear==1)
            q=4'b0000;
        else begin
            temp= q>>1;
            q={data,temp[2:0]};
        end
    end
endmodule

//tb
module sipo_tb (
    
);
    reg clear,clk,data;
    wire [3:0] q;
    
    initial begin
        clear=1;
        clk=0;
        data=0;
    end
    initial #10 clear =~clear;
    always #1 clk=~clk;
    always #2 data=~data;
    initial #100 $stop;
    sipo_dut siop_a(clear,clk,data,q);
endmodule
