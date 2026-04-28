module tb_muxfour;
reg I0,I1,I2,I3,S0,S1;
wire Y;
muxfour uut (I0,I1,I2,I3,S0,S1,Y);

initial begin
    $dumpfile("wave_muxfour.vcd");
    $dumpvars;
    $display("I0 I1 I2 I3 S0 S1 | Y");

    I0=0;I1=0;I2=0;I3=0;S0=0;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=0;I2=0;I3=0;S0=1;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=0;I2=0;I3=0;S0=0;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=0;I2=0;I3=0;S0=1;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);

    I0=1;I1=0;I2=1;I3=0;S0=0;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=0;I2=1;I3=0;S0=1;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=0;I1=0;I3=0;S0=0;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=0;I2=1;I3=0;S0=1;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);

    I0=0;I1=1;I2=0;I3=1;S0=0;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=1;I2=0;I3=1;S0=1;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=1;I2=0;I3=1;S0=0;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=0;I1=1;I2=0;I3=1;S0=1;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);

    I0=1;I1=1;I2=1;I3=1;S0=0;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=1;I2=1;I3=1;S0=1;S1=0;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=1;I2=1;I3=1;S0=0;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);
    I0=1;I1=1;I2=1;I3=1;S0=1;S1=1;#10;
    $display("%b %b %b %b %b %b | %b",I0, I1, I2, I3, S0, S1, Y);

    $finish;
end
endmodule

