module test3;

	bit [2:0][3:0][7:0]data; //3-dimensional packed array
initial begin
	data = 96'hABCDEF1234567890FFEEDDCC;

$display("Data of array is %b",data);

	foreach(data[i]) begin
		$display("Data is %0b",data[i]);

	foreach(data[i][j]) begin
		$display("Data[%0d][%0d] = %b",i,j,data[i][j]); 
		end
		end
end
endmodule
