module fa(output wire cout, sum, input wire a, b, cin);

assign {cout, sum} = cin + b + a;

endmodule
