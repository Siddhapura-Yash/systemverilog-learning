module queue;

int qu1[$];
int qu2[$];

initial begin

qu1 = '{1,2,3,4,5};
$display("element in qu1 are %p",qu1);

//in-built function of queue are
qu1.insert(0,99);	//insert(index,value);
$display("after inserting element in qu1 %p",qu1);

qu1.push_front(20);
$display("after push_front element in qu1 %p",qu1);

qu1.delete(3);
$display("after deleting element in index 3 qu1 becomes %p",qu1);

qu1.push_back(10);
$display("after push_back element in qu1 %p",qu1);

qu1.pop_front();
$display("after pop_front element in qu1 %p",qu1);

qu1.pop_back();
$display("after pop_back element in qu1 %p",qu1);

end
endmodule