module tb_halfadd;
reg A,B;
wire SUM,CARRY;
halfadd uut (A,B,SUM,CARRY);
initial begin
    $dumpfile("wave_halfadd.vcd");
    $dumpvars;
    $display("A B | SUM CARRY");

    A=0;B=0;#10;
    $display("%b %b | %b %b",A,B,SUM,CARRY);
    A=0;B=1;#10;
    $display("%b %b | %b %b",A,B,SUM,CARRY);
    A=1;B=0;#10;
    $display("%b %b | %b %b",A,B,SUM,CARRY);
    A=1;B=1;#10;
    $display("%b %b | %b %b",A,B,SUM,CARRY);
    $finish;
end 
endmodule