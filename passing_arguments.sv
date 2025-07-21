module passing_arguments;

int p,q,r;

task pass_arg(input int a,b, output int y);
	y = a + b;
	//$display("sum of %0d and %0d is %0d",a,b,y);
endtask

initial begin
p = 3;
q = 5;

pass_arg(p,q,r); //passing by value
$display("sum of %0d and %0d is %0d",p,q,r);
end
endmodule
