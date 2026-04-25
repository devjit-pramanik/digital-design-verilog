module tb_xnornand;
reg A,B;
wire Y;
xnor_nand uut (A,B,Y);
initial begin 
    $dumpfile("wave_xnornand.vcd");
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