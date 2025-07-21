module task_ex;

int a = 0; //if integer is declared outside task it's nature will be static

//task increment();
//	static int i;  //in static task memory will be retain and during second invocation of task it'll use that memory and update it's value
//	i = i + 1;
//$display("value of i = %0d",i);
//endtask 

task automatic increment(); //in automatic task during second invocation task will use new memory and does operation (Each call gets a fresh copy of local variables.)
	int i=0;
	i = i + 1;
	a = a + 1;
$display("value in automatic task is %0d",i);
$display("value of a = %0d",a);
endtask

initial begin
	increment();
	increment();
	increment();
end 
endmodule
