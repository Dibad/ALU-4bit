`timescale 1 ns / 10 ps

module compl1_tb;

reg[3:0] test_Ent;
reg cp1;
wire[3:0] test_Sal;

compl1 compl1a(test_Sal, test_Ent, cp1);

initial
begin

  $monitor("time %0d cp1=%b Ent=%b Sal=%b", $time, cp1, test_Ent, test_Sal);

  cp1 = 1'b0;
  test_Ent = 4'b0000;
  # 20;

  cp1 = 1'b0;
  test_Ent = 4'b0110;
  # 20;

  cp1 = 1'b0;
  test_Ent = 4'b1101;
  # 20;

  cp1 = 1'b0;
  test_Ent = 4'b1111;
  # 20;

  // cp1

  cp1 = 1'b1;
  test_Ent = 4'b0000;
  # 20;

  cp1 = 1'b1;
  test_Ent = 4'b0110;
  # 20;

  cp1 = 1'b1;
  test_Ent = 4'b1101;
  # 20;

  cp1 = 1'b1;
  test_Ent = 4'b1111;
  # 20;

  $finish;

end

endmodule
