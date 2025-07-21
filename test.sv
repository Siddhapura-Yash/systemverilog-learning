module test;
    bit [7:0] data;

    initial begin
        data = 8'b10101010;
$display("whole data is %b",data);
        for (int i = 0; i < $size(data); i++) begin
            $display("data[%0d] = %b", i, data[i]);
end
    end
endmodule