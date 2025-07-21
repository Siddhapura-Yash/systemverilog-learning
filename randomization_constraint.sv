class constr;
	rand bit [7:0] min,med,max;

constraint range { 0<min ; med > min; med < max <128; }

endclass

module cons_ex;

initial begin
constr con;
con = new();
con.randomize();
$display("value of min=%0d med=%0d max=%0d",con.min,con.med,con.max);

end
endmodule
