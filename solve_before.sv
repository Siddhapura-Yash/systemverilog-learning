class Example;
  rand int x, y;

  // y depends on x, so we tell solver to pick x first
  constraint c1 {
    solve x before y;    // Decide x first
    x inside {[1:5]};    // x can be 1 to 5
    y == x + 10;         // y is based on x
  }
endclass

module test;
  initial begin
    Example e = new();
    repeat (5) begin
      e.randomize();
      $display("x = %0d, y = %0d", e.x, e.y);
    end
  end
endmodule
