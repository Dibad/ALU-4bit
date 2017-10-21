`timescale 1 ns / 10 ps

module fa_tb;

reg test_a, test_b, test_cin;
wire test_cout, test_sum;

fa fa1(test_cout, test_sum, test_a, test_b, test_cin);

initial
begin

  $monitor("timme %0d cout=%b sum=%b a=%b b=%b cin=%b", $time, test_cout, test_sum, test_a, test_b, test_cin);

  test_a = 1'b0;
  test_b = 1'b0;
  test_cin = 1'b0;
  # 20;

  test_a = 1'b0;
  test_b = 1'b0;
  test_cin = 1'b1;
  # 20;

  test_a = 1'b0;
  test_b = 1'b1;
  test_cin = 1'b0;
  # 20;

  test_a = 1'b0;
  test_b = 1'b1;
  test_cin = 1'b1;
  # 20;

  test_a = 1'b1;
  test_b = 1'b0;
  test_cin = 1'b0;
  # 20;

  test_a = 1'b1;
  test_b = 1'b0;
  test_cin = 1'b1;
  # 20;

  test_a = 1'b1;
  test_b = 1'b1;
  test_cin = 1'b0;
  # 20;

  test_a = 1'b1;
  test_b = 1'b1;
  test_cin = 1'b1;
  # 20;

  $finish;

end

endmodule
