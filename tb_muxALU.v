module tb_muxALU;
reg A,B,S0,S1,S2;
wire Y;

mux_ALU uut (A,B,S0,S1,S2,Y);
initial begin 
    $dumpfile ("wave_muxALU.vcd");
    $dumpvars;
    $display ("A B S2 S1 S0 | Y");

    A=1;B=1;S2=0;S1=0;S0=0; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=1;B=0;S2=0;S1=0;S0=1; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=1;B=0;S2=0;S1=1;S0=0; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=1;B=1;S2=0;S1=1;S0=1; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
     
    A=1;B=1;S2=1;S1=0;S0=0; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=0;B=0;S2=1;S1=0;S0=1; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=0;B=1;S2=1;S1=1;S0=0; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
    A=1;B=1;S2=1;S1=1;S0=1; #10;
    $display ("%b %b %b %b %b | %b",A,B,S2,S1,S0,Y);
$finish;
end 
endmodule 
    