module tb_fulland;
reg A,B,Cin;
wire SUM,Cout;
fulladder_nand uut (A,B,Cin,SUM,Cout);
initial begin
    $dumpfile("wave_fulland.vcd");
    $dumpvars;
    $display ("A B Cin | SUM Cout");

    A=0;B=0;Cin=0;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=0;B=0;Cin=1;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=0;B=1;Cin=0;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=0;B=1;Cin=1;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=1;B=0;Cin=0;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=1;B=0;Cin=1;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=1;B=1;Cin=0;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    A=1;B=1;Cin=1;#10;
    $display("%b %b %b | %b %b",A,B,Cin,SUM,Cout);
    $finish;
end
endmodule
    