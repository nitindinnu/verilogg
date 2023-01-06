module binary_to_gray_4bit_tb (
    
);
    reg [3:0]b;
    wire [3:0]g;

    binary_to_gray_4bit_dut a1(b,g);

    initial begin
        b[3]=0;b[2]=0;b[1]=0;b[0]=0;
    end
    always #2 b[0]=~b[0];
    always #4 b[1]=~b[1];
    always #8 b[2]=~b[2];
    always #16 b[3]=~b[3];
endmodule




