module task_as_tb_bit4FA #(parameter n=4)(A,B,cin,sum,cout);
input [n-1:0]A,B;
input cin;
output reg [3:0]sum;
output reg cout;
reg [2:0]c;
// wire [2:0]c;
always @(*) begin
    Full_adder(A[0],B[0],cin,sum[0],c[0]);
    Full_adder(A[1],B[1],c[0],sum[1],c[1]);
    Full_adder(A[2],B[2],c[1],sum[2],c[2]);
    Full_adder(A[3],B[3],c[2],sum[3],cout);
end

task Full_adder(input a,b,c,output sum,cout);
    begin
        sum = a^b^c;
        cout = a&b | b&c |c&a;
    end
endtask



endmodule

module ttb_TASK_as_tb_bit4FA ();
    reg [3:0]A,B;
    reg cin;
    wire [3:0]sum;
    wire cout;
    task_as_tb_bit4FA a1(A,B,cin,sum,cout);
    initial tb_of_4bit_fa;

    task tb_of_4bit_fa;
    begin
        A=0;B=0;cin=0;
        forever begin
            #5 A=A+1; B=B+1;
        end
    end
    endtask

    /* function tb_of_4bit_fa; 
    // begin
** Error: D:\Obsi\verilogg\behavvvioural\TASK_AND_FUNCTIONS\TASK_as_tb_bit4FA.v(43): Function 'tb_of_4bit_fa' must be declared with at least one input.
** Error: D:\Obsi\verilogg\behavvvioural\TASK_AND_FUNCTIONS\TASK_as_tb_bit4FA.v(43): (vlog-13114) Timing control in function is illegal.
** Error: D:\Obsi\verilogg\behavvvioural\TASK_AND_FUNCTIONS\TASK_as_tb_bit4FA.v(32): 'tb_of_4bit_fa' is not a task name.
    //     A=0;B=0;cin=0;
    //     forever begin
    //         #5 A=A+1; B=B+1;
    //     end
    // end
     endfunction */

endmodule //TASK_as_tb_bit4FA


