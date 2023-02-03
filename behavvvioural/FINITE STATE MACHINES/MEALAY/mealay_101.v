module mealay_101_nonoverlap (
    input x,clk,reset,
    output reg y 
);
    parameter s1 =2'b00 ,s2=2'b01,s3 = 2'b10 ; //coz only 3 states
    reg [1:0] cs,ns;

    always @(posedge clk ) begin
        if(reset)begin
            cs<=0;
        end
        else begin
            cs<=ns;
        end
    end

    always @(cs,x) begin
        begin
          case (cs)  
          s1: if(x==0)begin ns<=s1;y<=0; end else begin ns<=s2;y<=0; end
          s2: if(x==0)begin ns<=s3;y<=0; end else begin ns<=s2;y<=0; end
          s3: if(x==0)begin ns<=s1;y<=0; end else begin ns<=s1;y<=1; end //major diff b/w overlap and non overlap
          default :ns<=s1;
          endcase  
        end
    end
endmodule //mealay_101

module tb_mealay_101_nonoverlap (
    
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
        x=0 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=1 ;#10;
        x=1 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=0 ;#10;
        x=0 ;#10;
        x=1 ;#10;
        x=0 ;#10;
        x=1 ;
    end
    initial #90 reset=1;
    mealay_101_nonoverlap a1(x,clk,reset,y);
endmodule //mealay_101
