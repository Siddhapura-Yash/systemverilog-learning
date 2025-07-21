class my_class;
int a;
int b;

function func(int a,int b);
	this.a = a; //this explicitly tells the simulator to use the class variable
	this.b = b;
endfunction

function void disp(string name);
	$display("Value of string %s is a = %0d and b = %0d",name,a,b);
endfunction

endclass


module class_ex;
initial begin

my_class c1,c2;	//c1 and c2 are objects of my_class
c1 = new();

//c2 = c1;  //by doing this c1 and c2 object will point out same memory to //if i change in any one object it'll be also reflect to another object 

c2 = new c1; //shallow copy //by putting new we can give different memory to each object

c1.func(1,2);
c1.disp("p1");

c2.func(22,33);
c2.disp("p2");
end
endmodule

