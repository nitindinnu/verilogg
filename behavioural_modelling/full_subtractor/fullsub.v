//4bit full subtractor
module dut_fullsub (input [3:0]a,b,
                    input c ,
                    output reg barrow,
                    output reg [3:0]diff);
    // always @(a or b or c) begin
    always @(*) begin
        // diff = a^b^c;
        // barrow = ~a&b | ~a&c | b&c ;
        // barrow = (~a&b) | (~(a^b)&c);
        {barrow,diff} = a-b-c;
    end
endmodule
//tb
module tb_fullsub (
    
);
    reg [3:0]a,b;
    reg c ;
    wire barrow;
    wire [3:0]diff; 
    integer j;

    initial begin
        a<=0;
        b<=0;
        c<=0;

        for(j=0;j<5;j=j+1) 
        begin
            #10;
            a<=$random;
            b<=$random;
            c<=$random;
        end
        
    end 

    dut_fullsub fs01(a,b,c,barrow,diff);
endmodule