module or_tb (
    
);
reg a,b;
wire y;

or_dut test(a,b,y);

initial begin
    $monitor("a=%0b,b=%0b,y=%0b",a,b,y);
    a=0;b=0;
end

always #2 b=~b;
always #4 a=~a;
    
endmodule
