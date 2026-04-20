//4-bit Ripple Carry Adder.

module four_bitadder (A0,B0,A1,B1,A2,B2,A3,B3,Cout,SUM0,SUM1,SUM2,SUM3);
input A0,B0,A1,B1,A2,B2,A3,B3;
output Cout,SUM0,SUM1,SUM2,SUM3;
wire C1,C2,C3;

fulladd FA1 (A0,B0,1'b0,SUM0,C1);
fulladd FA2 (A1,B1,C1,SUM1,C2);
fulladd FA3 (A2,B2,C2,SUM2,C3);
fulladd FA4 (A3,B3,C3,SUM3,Cout);

endmodule 

/* 1'b0 - Here , 1- number of bits that is 1.
                'b- means binary
                0 - value is 0.
That means together it means 1-bit binary value is 0. 

Why better thatn previous one ? 
Simply because it saves hardware descriptive clutter and is a standard practice.
Hardware perspective- When you write this you are telling hardware that tie this input permanently
to the logic LOW ie. ground ie. you are directly connecting that input pin "Cin" to ground. 

Why not 0? - This is because 0 is "unsized numeric constant. Tools may assume default width that
is 32-bit.

Similarly 1'b1- means logic HIGH
4'b1010 - That is a 4-bit number.
8'hFF- hex value
'd - decimal value 
'o - octal value 
These are known as Number base specifiers or more specifically "RADIX SPECIFIERS". 
FULL FORMAT- In verilog any number is written as - 
<size>'<base><value>
Ex- 4'b1010 , here 4 is the number of bits(size) , 'b is binary base and 1010 is the value.
So these are Radix specifiers of numeric constants in verilog.
And these type of values are called as "sized numeric constants".

