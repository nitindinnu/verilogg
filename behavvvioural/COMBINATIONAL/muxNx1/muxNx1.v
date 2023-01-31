module muxNx1_dut #(parameter power_n = 0) 
    (
    input  [(2**power_n)-1:0]i,
    input [power_n-1:0] s,
    output reg y
    );  
    // parameter N = 16 ;
    // input[N-1:0]i;
    // output y;
    // always @(i,sel) begin
    //     if (sel==4'b0000) begin  y=i[0] ;    end
    //     else if (sel==4'b0000) begin  y=i[0] ;    end
    // end
    
    always @(i,s) begin
        y = i[s];
    end
endmodule

module  MuxNx1_tb(
);  
    
    // parameter power_n=5;
    reg [(2**power_n)-1:0]i;
    reg [power_n-1:0] s;
    wire y;

    initial begin
        repeat(5) begin
            i=$random;s=$random;#10;
        end
    end

    // muxNx1_dut #(.power_n(power_n)) a1(.i(i),.s(s),.y(y ));
    muxNx1_dut #(power_n) a1(i,s,y);
    // muxNx1_dut #(.power_n(4)) a1(.i($random),.s($random),.y(y));
endmodule

