module xor_tb (
    
);
reg a,b,c,d;
wire y;

xor_dut test(a,b,c,d,y);

initial begin
    // $monitor("a=%0b,b=%0b,y=%0b",a,b,y);
    a=0;b=0;c=0;d=0;
end

always #2 d=~d;
always #4 c=~c;
always #8 b=~b;
always #16 d=~d;
    
endmodule
