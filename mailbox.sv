module mailbox_ex;

mailbox mbox;
int data;

initial begin
mbox = new();

fork 
	//thread1
		begin
          for(int i=0; i<10 ; i++) begin
            $display("sender side value of i is %0d",i);
			mbox.put(i);
			end			
		end
	//thread2
		begin
          for(int j=0; j<10; j++) begin
			mbox.get(data);
			$display("receiver side value of i is %0d",data);
			end
		end
join
end
endmodule 