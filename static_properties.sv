class stat_prop;
static int a; //static variable can hold it's value and can update


function incr();
int b; //dynamic 
a++;
b++;
$display("after incrementing value of a=%0d and b=%0d",a,b);
endfunction
endclass

module static_properties;
stat_prop c1 = new();
initial begin
c1.incr();
c1.incr();

end
endmodule

