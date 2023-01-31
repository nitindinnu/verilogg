module prime_in_veri_1 (
y);  
    integer i=0,j=0;
    integer count=0; //can use integer
    // reg count=0; //can use reg but it can only store 0 or 1 it contradicts with counting more than 1 so must use integer
    output  y;
    always @(i) begin
         $display("%0d is a prime num",0);
         $display("%0d is a prime num",1);
      for(i=2;i<=200;i=i+1) begin
        count=0;
        for (j = 2; j <= i/2;j=j+1) begin
                        if(i%j==0)begin
                          count=count+1;
                          //break;
                        end
                end  
                if(count==0)begin
                 $display("%0d is a prime num",i);
                end
//         		else
//                   $display("%0d is not a prime num",i);
        end  
                    
    end
endmodule

// ----------------
// module prime_in_veri (
// y);  
//     integer i=2,j=2,count=0;
//     output  y;
//     always @(i) begin
//         //  $display("%0d is a prime num",0);
//         //  $display("%0d is a prime num",1);
//         for(i=2;i<=200;i=i+1) begin

//             // if(i==0 || i==1)begin
//             //     $display("%0d is a prime num",i);
//             // end

//             // if(n>1) begin //if (i>1)
//                 // for(i=2;i<=200;i=i+1) begin
//                     for (j = 2; j <i; j=j+1) begin
//                         if(i%j==0)begin
//                             count=count+1;
//                         end
//                     end  
//                     if(count==0)begin
//                         $display("%0d is a prime num",i);
//                     end
//         end  
                    
//     end
//             // end
//         // end
// endmodule