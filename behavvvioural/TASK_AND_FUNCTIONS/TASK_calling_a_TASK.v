module TASK_calling_a_TASK (
);
reg a,b,y;

    task add(input a,b,output y);
        begin
            y=a+b;
            $display(y);
        end
    endtask

    // task add_tb;
    initial begin
        add(5,6,y);
    end
    // endtask
endmodule //TASK_calling_a_TASK
