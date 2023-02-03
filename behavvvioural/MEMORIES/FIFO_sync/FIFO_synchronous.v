module FIFO_synchronous #(parameter depth =8,datawidth=8 ) (
   input clk,reset,
   input [datawidth-1:0]din, 
   input rd,wr,
   output full,empty,
   output reg [datawidth-1:0]dout 
);

    reg [7:0]mem[0:7];
    integer count=0;
    // reg [2:0]rd_ptr,wr_ptr;
    //or
    reg [$clog2(depth)-1:0]rd_ptr,wr_ptr;
    assign full = (count==depth);
    assign empty = (count==0);

    always @(posedge clk ) begin
        if (reset) begin
            {rd_ptr,wr_ptr,count}<=000;
            dout<=8'bz;
            end 
        else 
            begin
                if(rd && !wr && !empty) begin
                    dout<=mem[rd_ptr];
                    rd_ptr<=rd_ptr+1;
                    count<=count-1;
                end
                else if(wr && !rd && !full) begin
                    mem[wr_ptr]<=din;
                    wr_ptr<=wr_ptr+1;
                    count<=count+1;
                end
                else if (wr && rd) begin
                    mem[wr_ptr]<=din;
                    dout<=mem[rd_ptr];
                    rd_ptr<=rd_ptr+1;
                    wr_ptr<=wr_ptr+1;
                    count<=count;
                end
            end
    end
endmodule //FIFO_synchronous

// `define delay1 5

module tb_FIFO_synchronous (
);
    parameter datawidth=8,depth =8 ;
    reg[4:0]i;//for loop 
    reg clk,reset;
    reg [datawidth-1:0]din;
    reg  [$clog2(depth)-1:0] rd_ptr,wr_ptr;
    reg rd,wr;
    wire full,empty;
    wire [datawidth-1:0]dout ;
    
    initial begin
        {clk,reset,rd,wr}<=0100;din=8'd3;#(10);
        reset=0;

        {rd,wr}=01;
        for(i=0;i<5;i=i+1)begin
           din=i+1; #(10); 
        end

        {rd,wr}=10;
        for(i=0;i<5;i=i+1)begin
           rd_ptr=i+1; #(10); 
        end
    end
    always #5 clk=~clk;

    FIFO_synchronous a1(clk,reset,din,rd,wr,full,empty,dout);
endmodule //FIFO_synchronous
