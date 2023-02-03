module rom( input clk,rst,
            input [2:0] address,
            output reg [7:0] data_out);

//reg [7:0] mem [7:0] = {8'd1,8'd2,8'd3,8'd4,8'd5,8'd6,8'd7,8'd8};

reg [7:0] mem [7:0]; //8 bytes=64 bits with 3 adress lines  
initial
begin
mem[0]=8'd1;
mem[1]=8'd2;
mem[2]=8'd3;
mem[3]=8'd4;
mem[4]=8'd5;
mem[5]=8'd6;
mem[6]=8'd7;
mem[7]=8'd8;
end
always@(posedge clk)
	begin
	if(!rst)
	data_out<=8'b0000_0000;
	else
	data_out<=mem[address];
	end
//assign data_out=temp;
endmodule

module tb_rom;
reg clk,rst;
reg [2:0] address;
wire [7:0] data_out;

rom uut(.clk(clk),.rst(rst),.address(address),.data_out(data_out));

always #5 clk = ~clk;
initial
	begin
	clk=1; rst=0; address=0; 
#10; rst=1;
//#10; address=0;
#10; address=1;
#10; address=2;
#10; address=3;
#10; address=4;
#10; address=5;
#10; address=6;
#10; address=7;
	end
endmodule



