module fulladd (A,B,Cin,SUM,Cout);
input A,B,Cin;
output SUM,Cout;

wire S1,C1,C2;
assign S1=A^B;
assign C1=A&B;
assign SUM=S1^Cin;
assign C2=S1 & Cin;
assign Cout=C1 | C2;
endmodule 
