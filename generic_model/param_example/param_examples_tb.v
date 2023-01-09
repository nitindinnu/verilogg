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
