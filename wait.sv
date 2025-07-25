module test;
  bit ready = 0;

  initial begin
    #10 ready = 1;          // Make ready true after 10 time units
  end

  initial begin
    wait (ready);           // Wait until ready == 1
    $display("Ready at %0t", $time);
  end
endmodule
