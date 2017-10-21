`timescale 1 ns / 10 ps

module cl_tb;

reg test_a, test_b;
reg [1:0] test_s;
wire test_out;

cl cl1(test_out, test_a, test_b, test_s);

initial

begin
  $monitor("timepo %0d s=%b a=%b b=%b out=%b", $time, test_s, test_a, test_b, test_out);

  // 00

  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b0;

  # 20;

  test_s = 2'b00;
  test_a = 1'b0;
  test_b = 1'b1;

  # 20;

  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b0;

  # 20;

  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;

  # 20;

  // 01

  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b0;

  # 20;

  test_s = 2'b01;
  test_a = 1'b0;
  test_b = 1'b1;

  # 20;

  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b0;

  # 20;

  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b1;

  # 20;

  // 10

  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b0;

  # 20;

  test_s = 2'b10;
  test_a = 1'b0;
  test_b = 1'b1;

  # 20;

  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b0;

  # 20;

  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b1;

  # 20;

  // 11

  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b0;

  # 20;

  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b1;

  # 20;

  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b0;

  # 20;

  test_s = 2'b11;
  test_a = 1'b1;
  test_b = 1'b1;

  # 20;

  $finish;
end

endmodule
