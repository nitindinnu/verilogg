module param_examples_dut #(parameter data_width =8,id_width=32) (data,id);
    input [data_width-1:0]data;
    input [id_width-1:0] id;
    initial begin
        //display width values
        $display("data_width = %0d,id_width =%0d",data_width,id_width);
        //display variables
        $display("data = %0d,id =%0d",data,id);
        $display("--------------------------------------------------");
    end
endmodule

`define D_WIDTH 32
`define I_WIDTH 8

module param_examples_TB ;
    param_examples_dut p1(.data(2),.id(1)); //without passing param
    param_examples_dut #(4,16) p2(.data(3),.id(2)); //constant param passing 
    param_examples_dut #(`D_WIDTH,`I_WIDTH) p3(.data(6),.id(3)); //macro define basrd parameter
    param_examples_dut p4(.data(3),.id(2)); 
            //changing parameter value using defparam
            defparam p4.data_width =10;
            defparam p4.id_width =16;
endmodule

