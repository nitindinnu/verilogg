module tb_rca_4bit (

);
    reg [3:0] a,b;
    reg cin;
    // reg [0:0]c;
    wire [3:1]c;
    wire cout;
    // wire [4:4]c;
    wire [3:0]s;

    dut_rca_4bit a1(a,b,c,s,cin,cout);

    initial begin
        #5;
        a=4'd6;b=4'd6;cin=0;#10;
        // a=4'd6;b=4'd6;c[0]=0;#10;
        a=4'd12;b=4'd11;#10;
    end
endmodule
