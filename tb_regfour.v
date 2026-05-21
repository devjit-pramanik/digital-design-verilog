module tb_regfour;
reg [3:0] D;
reg clk;
wire [3:0] Q;

reg_four uut (D,clk,Q);
always #5 clk = ~clk;
initial begin 
    $dumpfile("wave_regfour.vcd");
    $dumpvars;

    clk=0;
    D = 4'b0000;

    #10 D = 4'b1010;
    #10 D = 4'b1100;
    #10 D = 4'b1111;
    #10 D = 4'b0011;
    #20 $finish;
end
endmodule
