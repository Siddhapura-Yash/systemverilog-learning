module test;
  event done;

  initial begin
    #5 -> done;       // Trigger event after 5 time units
  end

  initial begin
    @ (done);         // Wait until event is triggered
    $display("Event occurred at time %0t", $time);
  end
endmodule
	
