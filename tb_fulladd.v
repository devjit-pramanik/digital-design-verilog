module tb_fulladd;
reg A,B,Cin;
wire SUM,Cout;
fulladd uut (A,B,Cin,SUM,Cout);
initial begin 
    $dumpfile("wave_fulladd.vcd");
    $dumpvars;
    $display("A B Cin | SUM Cout");
    
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
    
