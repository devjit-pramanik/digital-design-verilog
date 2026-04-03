module halfadd (A,B,SUM,CARRY);
input A,B;
output SUM,CARRY;
assign SUM = (A&~B)|(~A&B); //Also XOR =A^B; both meainings are same. 
assign CARRY = A&B;
endmodule