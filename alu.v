module alu(output wire[3:0] R, output wire zero, carry, sign, input wire[3:0] A, B, input wire[1:0] ALUOp, input wire L);

wire op1_A, op2_B, cp1, cin0;
wire[3:0] OP1, OP2, temp, cout;

assign op1_A = ~ALUOp[1] | (L & ~ALUOp[0]);
assign op2_B = ~ALUOp[1] | (L ^ ALUOp[0]);
assign cp1 = (~L & ALUOp[0])  | (~L & ALUOp[1]);
assign cin0 = (~L & ALUOp[0]) | (~L & ALUOp[1]);

mux2_4 mux2_4a(OP1, 4'b0000, A, op1_A);
mux2_4 mux2_4b(temp, A, B, op2_B);
compl1 compl1a(OP2, temp, cp1);

cal cal0(R[0], cout[0], OP2[0], OP1[0], L, cin0, ALUOp);
cal cal1(R[1], cout[1], OP2[1], OP1[1], L, cout[0], ALUOp);
cal cal2(R[2], cout[2], OP2[2], OP1[2], L, cout[1], ALUOp);
cal cal3(R[3], cout[3], OP2[3], OP1[3], L, cout[2], ALUOp);

assign zero = R ? 1'b0 : 1'b1;
assign carry = L ? 'bx : cout[3];
assign sign = L ? 'bx : R[3];



endmodule
