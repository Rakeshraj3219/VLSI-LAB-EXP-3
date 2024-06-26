
module multiplier4bit(m,a,b);
input[3:0]a,b;
output[7:0]m;
wire[15:0]p;
wire[12:1]s,c;
and(p[0],a[0],b[0]);
and(p[1],a[1],b[0]);
and(p[2],a[0],b[1]);
and(p[3],a[2],b[0]);
and(p[4],a[1],b[1]);
and(p[5],a[0],b[2]);
and(p[6],a[3],b[0]);
and(p[7],a[2],b[1]);
and(p[8],a[1],b[2]);
and(p[9],a[0],b[3]);
and(p[10],a[3],b[1]);
and(p[11],a[2],b[2]);
and(p[12],a[1],b[3]);
and(p[13],a[3],b[2]); 
and(p[14],a[2],b[3]); 
and(p[15],a[3],b[3]);
half_adder ha1(s[1],c[1],p[1],p[2]);
full_adder fa2(s[2],c[2],p[4],p[3],p[5]);
half_adder ha3(s[3],c[3],s[2],c[1]);
full_adder fa4(s[4],c[4],p[6],p[7],p[8]);
full_adder fa5(s[5],c[5],s[4],c[2],c[3]);
half_adder ha6(s[6],c[6],s[5],p[9]);
full_adder fa7(s[7],c[7],p[10],p[11],p[12]);
full_adder fa8(s[8],c[8],c[5],c[4],s[7]);
half_adder ha9(s[9],c[9],s[8],c[6]);
full_adder fa10(s[10],c[10],p[14],p[13],c[7]);
full_adder fa11(s[11],c[11],c[9],c[8],s[10]);
full_adder fa12(s[12],c[12],p[15],c[10],c[11]);
buf(m[0],p[0]);
buf(m[1],s[1]);
buf(m[2],s[3]);
buf(m[3],s[6]);
buf(m[4],s[9]);
buf(m[5],s[11]);
buf(m[6],s[12]);
buf(m[7],c[12]);
endmodule
module half_adder(sum,carry,a,b);
input a,b;
output sum,carry;
xor(sum,a,b);
and(carry,a,b);
endmodule
module full_adder(sum,cout,a,b,c);
input a,b,c;
output sum,cout; 
    assign sum = (a ^ b ^ c );
    assign cout = (a & b ) | (b & c) | (a & c);
endmodule
module ha(a,b,sum,carry);
input a,b;
output sum,carry;

endmodule

module multi_2(a,b,p,carry);
input [1:0]a,b;
output [2:0]p;
output carry;

endmodule
