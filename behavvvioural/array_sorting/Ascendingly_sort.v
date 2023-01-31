module Sort_Asc;
    reg [4:0]array[9:0];  //[value 2pow5=32 values only] var [array_length] //https://www.chipverify.com/images/verilog/memory.png
    integer temp,i,j,n;
    
    initial begin
    array[0] = 8;
    array[1] = 4'b1111;
    array[2] = 4'd15;
    array[3] = 4'hf;
    array[4] =  33; //how it is storing more than 31 value @5bits reg -- default value of reg 1 is considered
    array[5] = 6;
    array[6] = 0;
    array[7] = 1;
    array[8] = 6;
    array[9] = 2;
    // for(n=0;n<10;n=n+1)begin
    //     array[n]=$random;
    // end
    $display("array randomly generated =%0p",array);
    begin
    for(i=0;i<11;i=i+1)
        begin 
            for( j=0;j<11;j=j+1)
              begin
                //  if(array[i]>array[j])// acending
                 if(array[i]<array[j])// decending
                    begin                         
                    temp = array[i];
                    array[i] = array[j];
                    array[j] = temp;
                    end
                end
        end
              $display("array after sorting on ascending =%0p",array);	
    end
end
endmodule