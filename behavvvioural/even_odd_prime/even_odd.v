module even_odd_in_veri (
y);  
    integer i=0;
    output reg y;
    always @(i) begin
        for(i=0;i<=200;i=i+1) begin
        if(i%2==0)begin
            $display("%0d is a even num",i);
        end
        else begin
            $display("%0d is a odd num",i);
        end
    end
    end
endmodule



