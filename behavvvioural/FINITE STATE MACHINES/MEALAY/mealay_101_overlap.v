module mealay_101_overlap (
    input din,clk,reset,output reg y 
);
    parameter s1 =2'b00,s2=2'b01,s3=2'b10;
    reg[1:0]cs,ns;

    always @(posedge clk ) begin
        if (reset) begin
            cs<=0;
        end else begin
            cs<=ns;
        end
    end

    always @(cs,din) begin
        case (cs)
            s1:if(din==1) begin ns<=s2;y<=0; end else begin ns<=s1;y<=0; end
            s2:if(din==0) begin ns<=s3;y<=0; end else begin ns<=s2;y<=0; end
            s3:if(din==1) begin ns<=s2;y<=1; end else begin ns<=s1;y<=0; end
            default:ns<=s1;
        endcase
    end
endmodule //mealay_101_overlap

module tb_mealay_101_overlap (
    
);
    reg x,clk,reset;
    wire y;
    // integer delay=5;
    initial begin
        clk=0;
        forever begin
            #5 clk=~clk;
        end
    end
    initial begin
        reset=0;
        x=0 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=1 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=0 ;#10;
        x=0 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=1 ;
    end
    initial #200 reset=1;
    mealay_101_overlap a1(.din(x),.clk(clk),.reset(reset),.y(y));
endmodule //mealay_101
