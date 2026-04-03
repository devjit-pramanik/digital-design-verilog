module two_bitadd (A0,B0,A1,B1,S0,S1,Cout);
input A0,B0,A1,B1;
output S0,S1,Cout;

wire Cin;
assign S0=A0^B0;
assign Cin=A0&B0;

fulladd FA1 (A1,B1,Cin,S1,Cout);
endmodule



