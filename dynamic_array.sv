module dynamic_array;

int dyn1[];
int dyn2[];

initial begin

dyn1 = new[5];

//dyn1 = '{11,22,33,44,55};	//alternative way to assign data in array

foreach (dyn1[i])
	dyn1[i] = i;

$display("data of dynamic array is %p",dyn1); //for unpacked array we have to use %p in display

//for(int i=0; i<$size(dyn1); i++)
	//$display("data of array dyn[%0d] = %0d",i,dyn1[i]);
foreach(dyn1[i])
$display("data of index dyn1[%0d] = %0d",i,dyn1[i]);


	//copy method to another array
	//1st method
	dyn2 = dyn1;
	$display("data of dyn2 array is %p",dyn2);
	
	dyn2[3] = 30;
	$display("data of dyn1 array after changes is %p",dyn1);
	$display("data of dyn2 array after changes is %p",dyn2);

//to increase size of array we can use 2 methods
//1st method

dyn1 = new[10];
$display("after increasing size of dyn1 is %p",dyn1);  //all data will be wiped out and array will be empty


//2nd method
dyn2 = new[10](dyn2);
$display("after increasing size of dyn2 array %p",dyn2); //all previous data will remain as it is 

$display("size of dyn1 array is %0d",dyn1.size());

dyn2.delete();
$display("after deleting dyn2 array dyn2 will be empty and look like %p",dyn2);

end
endmodule