//class parent_class;
//int a;
//
//function void display();
//$display("Parent class no is %0d",a);
//endfunction
//
//endclass
//
//class child_class extends parent_class;
//int b;
//
//function void show();
//$display("Child class no is %0d",b);
//endfunction
//
//endclass
//
//module inheritence;
//
//initial begin
//child_class c1;
//
//c1 = new(); 
//
//c1.display(); //we are accessing method(function) from parent class it's inheritence
////c1.show(); //calling own class method
//
//end
//endmodule 



class parent_class;
  int a = 10;

  function void display();
    $display("Parent class no is %0d", a);
  endfunction
endclass

class child_class extends parent_class;
  int b = 20;

  // Override display(), but also call parent's display
  function void display();
    super.display();  // Calls parent's display first
    $display("Child class no is %0d", b);
  endfunction
endclass

module inheritence;
  initial begin
    child_class c1 = new();  
    parent_class p1 = new(); 

    //$display("--- Calling child display() ---");
    c1.display();  // Prints both a and b (using super)

    //$display("--- Calling parent display() ---");
   // p1.display();  // Prints only a
  end
endmodule
