module tb_dff;
reg D;
reg clk;
wire Q;

dff uut (D,clk,Q);

always #5 clk = ~clk;
initial begin 
    $dumpfile("wave_dff.vcd");
    $dumpvars;

    clk=0;
    D=0;

    #10 D=1;
    #10 D=0;
    #10 D=1;
    #10 D=0;
    #20 $finish;
end 
endmodule 