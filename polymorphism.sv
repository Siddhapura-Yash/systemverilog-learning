class animal;
	virtual function void speak();
	$display("animal makes a sound");
endfunction
endclass

class dog extends animal;
function void speak();
$display("Dog barks");
endfunction
endclass

class cat extends animal;
function void speak();
$display("Cat meows");
endfunction
endclass

module poly_ex;
animal ani_h; // parent class handle
dog dog_h;    // 1st child class handle
cat cat_h;    // 2nd child class handle

initial begin
ani_h = new();
dog_h = new();
cat_h = new();

ani_h.speak();
ani_h = dog_h; // we are assigning child class handle to parent class handle [with this we can access child class method using parent class handle] 
// dog_h = ani_h // we can't do like this it's not valid
ani_h.speak(); // this will print function of child class if there is virtual word present at parent class by which polymorphism take place

end
endmodule