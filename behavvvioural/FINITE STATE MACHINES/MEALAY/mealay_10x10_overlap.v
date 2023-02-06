module mealay_10x10_overlap (
    input clk,reset,in,output reg y
);
    parameter s1=3'b000,s2=3'b001,s3=3'b010,s4=3'b011,s5=3'b100,s6=3'b101,s7=3'b110;
    reg [2:0]cs,ns;

    always @(posedge clk) begin
        if(reset) begin
            cs<=0;
        end
        else begin
            cs<=ns;  
        end  
    end

    always @(cs,in) begin
        case (cs)
            s1:if(in==1) begin ns<=s2;y<=0; end else begin ns<=s1;y<=0; end
            s2:if(in==0) begin ns<=s3;y<=0; end else begin ns<=s2;y<=0; end
            //10110,10010
            s3:if(in==1) begin ns<=s4;y<=0; end else begin ns<=s6;y<=0; end
            //10110
            s4:if(in==1) begin ns<=s5;y<=0; end else begin ns<=s2;y<=0; end
            s5:if(in==0) begin ns<=s2;y<=1; end else begin ns<=s1;y<=0; end
            //10001
            s6:if(in==1) begin ns<=s7;y<=0; end else begin ns<=s1;y<=0; end
            s7:if(in==0) begin ns<=s2;y<=1; end else begin ns<=s1;y<=0; end
            default:ns<=s1;
        endcase
    end
endmodule //mealay_10x10_overlap


module tb_mealay_10x10_overlap ();
    reg clk,reset,in;
    wire y;
    parameter CLK_PERIOD = 10;

    initial begin
    clk = 0;
    reset = 1;
    #10 ;in = 0;
    in=1;#10;
    in=0;#10;
    in=0;#10;
    in=1;#10;
    in=0;#10;

    in=1;#10;
    in=0;#10;
    in=1;#10;
    in=1;#10;
    in=0;#10;
    end

    always #(CLK_PERIOD/2) clk = ~clk;
    initial #5 reset = 0;
    // always #10 in = ~in;

    always @(posedge clk) begin
    $display("Time: %d ns, clk: %d, reset: %d, in: %d, y: %d",$time, clk, reset, in, y);
    end

    mealay_10x10_overlap a1(clk,reset,in,y);
endmodule //mealay_10x10_overlap
