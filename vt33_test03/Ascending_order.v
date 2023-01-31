module Ascending_order (
);
    parameter array_length = 10;
    reg [5:0]arr[array_length-1:0];
    integer i,j,temp,n;

    initial begin
        for(n=0;n<array_length;n=n+1)begin
            arr[n]=$random;
        end
        $display("before ascending order = %0p",arr);

        for(i=0;i<array_length+1;i=i+1)begin
            for(j=0;j<array_length+1;j=j+1) begin
                if (arr[i]>arr[j]) begin
                    temp=arr[i];
                    arr[i]=arr[j];
                    arr[j]=temp;
                end
            end
        end
        $display("after ascending order = %0p",arr);
    end
    

    // begin
        
    // end
    

endmodule
