module comparator_3bit_tb (
    
);//3bit magnitude comparator using 1bit comparator
reg [2:0]a,b;
// wire [3:1]L,G,E;
wire Lesser,Greater,Equal;

comparator_3bit_dut a1(a,b,L,G,E,Lesser,Greater,Equal);

initial begin
    $monitor("    A=%0b    B=%0b   Lesser=%0b     Greater=%0b    Equal=%0b   ",a,b,L,G,E);
    a[2]=1;a[1]=0;a[0]=1; b[2]=1;b[1]=0;b[0]=1; #10; //equal must be high as 5=5
    a[2]=1;a[1]=1;a[0]=1; b[2]=1;b[1]=0;b[0]=1; #10; //greater must be high as 7>5
    a[2]=1;a[1]=0;a[0]=1; b[2]=1;b[1]=1;b[0]=1; #10; //lesser must be high as 5<7

    #10;
    a=3'd5; b=3'd5;#10;
    a=3'd7; b=3'd5;#10;
    a=3'd5; b=3'd7;#10;
    $stop;

    #10
    a=3'b101; b=3'b111;#10;
    a=3'b111; b=3'b101;#10;
    a=3'b101; b=3'b101;#10;
    $stop;

end
    
endmodule

