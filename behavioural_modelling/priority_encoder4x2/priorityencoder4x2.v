module priencoder(i,y);
  input [3:0]i;
  output reg [1:0]y;
  always @(i)
    begin
      casex(i)
        4'b0000 : y=2'b00;
        4'b0001 : y=2'b00; //y<=i[0];
        4'b001x : y=2'b01; //y<=i[1];
        4'b01xx : y=2'b10; //y<=i[2];
        4'b1xxx : y=2'b11; //y<=i[3];
        // default y=2'ZZ;
      endcase
    end
endmodule

//tb
module pritb();
         reg [3:0]i;
  		 wire [1:0]y;
          
          
         initial
           begin
           $monitor("output=%0b,%0b",y[0],y[1]);
           i=4'b0000;
        //    i=4'b0001;#10;
        //    i=4'b0010;#10;
        //    i=4'b0100;#10;
        //    i=4'b1000;#10;
        //    i[0]=0;i[1]=0;i[2]=0;i[3]=1;#10;
		// 	i[0]=0;i[1]=0;i[2]=1;i[3]=0;#10;
		// 	i[0]=0;i[1]=1;i[2]=0;i[3]=0;#10;
		// 	i[0]=1;i[1]=0;i[2]=0;i[3]=1;#10;
           end
        always #5 i[0]=~i[0];
        always #10 i[1]=~i[1];
        always #20 i[2]=~i[2];
        always #40 i[3]=~i[3];
         
           
           priencoder a1(i,y);
    endmodule

