`timescale 1 ns / 10 ps

module cal_tb;

reg test_a, test_b, test_l, test_cin;
reg [1:0] test_s;
wire test_out, test_cout;

cal cal1(test_out, test_cout, test_a, test_b, test_l, test_cin, test_s);

initial

begin

  $monitor("time %0d l=%b s=%b | a=%b b=%b c_in=%b | out=%b c_out=%b", $time, test_l, test_s, test_a, test_b, test_cin, test_out, test_cout);

  test_l = 1'b0;
  test_s = 2'b00;
  test_a = 1'b1;
  test_b = 1'b1;
  test_cin = 1'b0;
  # 20;

  test_l = 1'b1;
  test_s = 2'b11;
  test_a = 1'b0;
  test_b = 1'b1;
  test_cin = 1'b0;
  # 20;

  test_l = 1'b0;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b1;
  test_cin = 1'b1;
  # 20;

  test_l = 1'b0;
  test_s = 2'b10;
  test_a = 1'b1;
  test_b = 1'b0;
  test_cin = 1'b1;
  # 20;

  test_l = 1'b1;
  test_s = 2'b01;
  test_a = 1'b1;
  test_b = 1'b0;
  test_cin = 1'b0;
  # 20;



  $finish;


end

endmodule
