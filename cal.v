module cal(output wire out, c_out, input wire a, b, l, c_in, input wire [1:0] s);

wire cl_out, fa_out;
cl cl1(cl_out, a, b, s);
fa fa1(c_out, fa_out, a, b, c_in);

assign out = l ? cl_out : fa_out;

endmodule
