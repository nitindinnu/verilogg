module ROM_1KB #(parameter datawidth=8,addresswidth=10)(
    input clk,reset,
    input [addresswidth-1:0]address,
    output reg [7:0] dataout 
);
reg [datawidth-1:0] register [(2**addresswidth)-1:0] ;
integer z;

initial begin
    for (z =0 ;z<=(2**addresswidth) ;z=z+1 ) 
        begin
        register[z]= 8'd0+z;
    end
end

always @(posedge clk ) begin
    if(reset)begin
        dataout<=8'b0000_0000;
    end
    else begin
        dataout<=register[address];
    end
end

endmodule //ROM_10KB

module tb_ROM_1KB (
);  parameter datawidth=8,addresswidth=10;
    reg clk,reset;
    reg [addresswidth-1:0]address;
    wire [7:0] dataout ;
    initial begin
        clk=1;reset=0;
        forever #5 clk=~clk;
    end
    initial begin
        address = 10'd 1023 ;
        #10 address = 10'd 2 ;
        #10 address = 10'd 780 ;
        #10 address = 10'd 4 ;
        #10 address = 10'd 521 ;
        #10 address = 10'd 21 ;
    end
    
    

    ROM_1KB a1(clk,reset,address,dataout);
    /* task usage
    initial readdata;

    task readdata;
        begin
        clk=1;reset=0;
        #5 address = 10'd 1 ;
        #5 address = 10'd 2 ;
        #5 address = 10'd 3 ;
        #5 address = 10'd 4 ;
        #5 address = 10'd 5 ;
        #5 address = 10'd 6 ;
        end
        always #5 clk=~clk;
    endtask*/
endmodule //ROM_10KB
