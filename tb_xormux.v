module tb_xormux;
reg A,B;
wire Y;
xor_mux uut (A,B,Y);

initial begin 
    $dumpfile("wave_xormux.vcd");
    $dumpvars;
    $display("A B | Y");

    A=0;B=0;#10;
    $display("%b %b | %b",A,B,Y);
    A=0;B=1;#10;
    $display("%b %b | %b",A,B,Y);
    A=1;B=0;#10;
    $display("%b %b | %b",A,B,Y);
    A=1;B=1;#10;
    $display("%b %b | %b",A,B,Y);
    $finish;
end
endmodule
    

