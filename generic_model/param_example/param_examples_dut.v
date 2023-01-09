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
