module tb_halfand;
reg A,B;
wire SUM,CARRY;
halfadder_nand uut (A,B,SUM,CARRY);
initial begin 
    $dumpfile ("wave_halfand.vcd");
    $dumpvars;
    $display ("A B | SUM CARRY");

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
