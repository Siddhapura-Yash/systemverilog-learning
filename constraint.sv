class constr;
	rand bit [7:0] min,med,max;

  constraint range { 0 < min ; max > med ; med > min; med < max; max <128; }
  //constraint range { 0<min ; 128 > med > min; med < max <128; }
// This line has chained relational operators, which SystemVerilog does not support directly
  
  constraint value {
    				min inside {[1:10]};
                    med inside {[1:10]};
    				max inside { [21:30], 55 };
  } //using inside keyword only given range of value will be assign to that variable we can also give range 
  
  constraint distribution { min dist { [1:3] := 5 }; } //in min variable value 1 to 3 has weight 5 means chances of getting value 1 to 3 are higher then other values
//dist controls how likely each value or range is picked during randomization by assigning weights.
  

  function void pre_randomize();
    $display("value before randomize min=%0d med=%0d max=%0d",min,med,max);
  endfunction
    
    function void post_randomize();
      $display("After randomize min=%0d med=%0d max=%0d",min,med,max);
    endfunction
    
endclass

module cons_ex;

initial begin
  
constr con;
con = new();
  con.srandom(42); //using this everytime i run same pattern will be generate with each run if changing in 42 will give differnet pattern
  
  repeat(2) begin
con.randomize();
  end
//$display("value of min=%0d med=%0d max=%0d",con.min,con.med,con.max);

end
endmodule
