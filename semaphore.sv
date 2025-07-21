module sema_ex;

semaphore sema;

initial begin
sema = new(1); // only 1 token means 1 thread can use resources at a time

fork //we use fork cuz we want 2 parallel thread execution
	task1();
	task2();
join
end

task task1();
	$display("Task 1: waiting..........");
	sema.get(1); // means we give token to task 1 and it'll have control over resources
	$display("Task 1 : received token and working on it.....");
	sema.put(1); //release token
	#10; //10ns delay to release after sometimes
	$display("Task 1 Releasing token at time = %0d",$time);
endtask

task task2();
	#15;
	$display("Task 2: Waiting for token.....");
	sema.get(1);
	$display("Task 2: received token and working on it......");
	sema.put(1);
	$display("Task 2 Releasing token at time = %0d",$time);
endtask

endmodule
			
