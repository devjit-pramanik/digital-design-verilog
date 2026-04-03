module tb_twobitadd;
reg A0,B0,A1,B1;
wire S0,S1,Cout;

two_bitadd uut (A0,B0,A1,B1,S0,S1,Cout);
initial begin 
    $dumpfile("wave_twobitadd.vcd");
    $dumpvars;
    $display("A1 A0 B1 B0 | Cout S1 S0");

    A0=0;B0=0;A1=0;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=0;A1=0;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=0;A1=1;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=0;A1=1;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);

    A0=0;B0=1;A1=0;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=1;A1=0;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=1;A1=1;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=0;B0=1;A1=1;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);

    A0=1;B0=0;A1=0;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=0;A1=0;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=0;A1=1;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=0;A1=1;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);

    A0=1;B0=1;A1=0;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=1;A1=0;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=1;A1=1;B1=0;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);
    A0=1;B0=1;A1=1;B1=1;#10;
    $display("%b %b %b %b | %b %b %b",A1,A0,B1,B0,Cout,S1,S0);

    $finish;
end
endmodule