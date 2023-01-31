//s as input
module mux_sel_input(i0,i1,s,y);
input i0,i1;
input s;
output y;
assign y=s?i1:i0;
endmodule

module tb_mux_sel_input();
reg i0,i1;
reg s;
wire y;
mux_sel_input dut(i0,i1,s,y);
initial begin
i0=0;i1=0;s=1'bx;#10;
i0=0;i1=1;s=1'bx;#10;
i0=1;i1=0;s=1'bx;#10;
i0=1;i1=1;s=1'bx;#10;
end
endmodule

//s as integer
module mux_sel_integer(i0,i1,y);
input i0,i1;
integer s;
output y;
assign y=s?i1:i0;
endmodule

module tb_mux_sel_integer();
reg i0,i1;
integer s;
wire y;
mux_sel_integer dut(i0,i1,y);
initial begin
i0=0;i1=0;s=1'bx;#10;
i0=0;i1=1;s=1'bx;#10;
i0=1;i1=0;s=1'bx;#10;
i0=1;i1=1;s=1'bx;#10;
end
endmodule

//s as real
module mux_sel_real(i0,i1,y);
input i0,i1;
real s;
output y;
assign y=s?i1:i0;
endmodule

module tb_mux_sel_real();
reg i0,i1;
real s;
wire y;
mux_sel_real dut(i0,i1,y);
initial begin
i0=0;i1=0;s='bx;#10;
$display("for 0 0 o/p if %b",y);
i0=0;i1=1;s='bx;#10;
$display("for 0 1 o/p if %b",y);
i0=1;i1=0;s='bx;#10;
$display("for 1 0 o/p if %b",y);
i0=1;i1=1;s='bx;#10;
$display("for 1 1 o/p if %b",y);
end
endmodule

// s as wire
module mux_sel_wire(i0,i1,y);
input i0,i1;
wire s;
output y;
assign y=s?i1:i0;
endmodule

module tb_mux_sel_wire();
reg i0,i1;
reg s;
wire y;
mux_sel_wire dut(i0,i1,y);
initial begin
i0=0;i1=0;s=1'bx;#10;
i0=0;i1=1;s=1'bx;#10;
i0=1;i1=0;s=1'bx;#10;
i0=1;i1=1;s=1'bx;#10;
end
endmodule



