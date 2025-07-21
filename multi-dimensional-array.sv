module test2;

	bit [3:0][7:0]data; //multi-dimensional packed array
initial begin
	data = 32'haabb_ccdd;

$display("Data of array is %b",data);
for(int i=0; i<$size(data); i++)
	$display("Data[%0d] = %b",i,data[i]);
end
endmodule
