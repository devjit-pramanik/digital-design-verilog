module tb_muxtwo;
reg I0,I1,S;
wire Y;
muxtwo uut (I0,I1,S,Y);

initial begin
    $dumpfile ("wave_muxtwo.vcd");
    $dumpvars;
    $display("I0 I1 S | Y");

    I0=0;I1=0;S=0;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=0;I1=0;S=1;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=0;I1=1;S=0;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=0;I1=1;S=1;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=1;I1=0;S=0;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=1;I1=0;S=1;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=1;I1=1;S=0;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);
     I0=1;I1=1;S=1;#10;
    $display("%b %b %b | %b",I0 ,I1 ,S ,Y);

    $finish;
end 
endmodule 