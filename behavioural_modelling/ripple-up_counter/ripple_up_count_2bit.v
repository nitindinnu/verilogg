module ripple_up_2bit_dut (
    clk,rst,en,c
);
    input clk,rst,en;
    output reg [1:0]c;

    always @(posedge clk ) begin
        if(rst==1)
            c=2'b00;
        else if (rst==0 & en==1) begin
            c=c+1;
        end    
    end
endmodule

//tb
module ripple_up_2bit_tb (
);
    reg clk,rst,en;
    wire [1:0]c;
    integer a;

    initial begin
        en=0;
        rst=1;
        clk=0;
        for ( a=0 ;a<32 ;a=a+1 ) begin //16 clk cycles
            #2 clk=~clk;
        end
    end
    initial #10 en=1;
    initial #10 rst=0;
    // always #5 clk=~clk;
    ripple_up_2bit_dut  ab(clk,rst,en,c); //instantiated
endmodule