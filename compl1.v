module compl1(output wire[3:0] Sal, input wire[3:0] Ent, input wire cp1);

assign Sal = cp1 ? ~Ent : Ent;

endmodule
