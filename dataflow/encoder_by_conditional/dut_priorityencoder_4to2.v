module dut_priorityencoder_4to2 (
    d,y,v
);
    input [3:0]d;
    output [1:0]y;
    output v;

    /*wrong
    assign y[0]=d[0]| (~d[1]&d[2]) ; //a=d0+ ~d1 & d2
    assign y[1]=d[0]| d[1]; //b= d0+d1*/
    
    assign y[0]=d[3]| (~d[2]&d[1]) ; 
    assign y[1]=d[2]| d[3]; 
    assign v= d[0]|d[1]|d[2]|d[3];

endmodule

module tb_priorityencoder_4to2 (
    
);
    reg [3:0]d;
    wire [1:0]y;

    dut_priorityencoder_4to2 a1 (d,y,v);

    initial begin
        // d=4'b1xxx;#10;
        // d=4'b01xx;#10;
        // d=4'b001x;#10;
        // d=4'b0001;#10;
        // d[0]=0;d[1]=0;d[2]=0;d[3]=0;
        d=4'b0000;
    end

    always #5 d[0]=~d[0];
    always #10 d[1]=~d[1];
    always #20 d[2]=~d[2];
    always #40 d[3]=~d[3];
endmodule
