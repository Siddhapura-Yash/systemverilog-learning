class Packet;
    rand bit [7:0] addr;
    rand bit [7:0] data;

    // Conditional constraint:
    // If addr < 50 → data even, else → data odd
    constraint cond_c {
        if (addr < 50)
            data % 2 == 0;
        else
            data % 2 == 1;
    }
endclass

module test;
    Packet p;  // Declare the object

    initial begin
        p = new();              // Create object
      void'($urandom);          // Change seed (different results each run) by default seed is fixed
        repeat (5) begin
            p.randomize();
            $display("addr=%0d data=%0d", p.addr, p.data);
        end
    end
endmodule
