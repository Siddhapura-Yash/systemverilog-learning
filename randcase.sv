module randcas;
  
  initial begin
    repeat(5) begin
    randcase //will choose random case based on weightage 
    5 : $display("one"); //5 is probability of getting string one
    7 : $display("two");
    24 : $display("three");
    2 : $display("four");
    endcase
    end
  end
endmodule
