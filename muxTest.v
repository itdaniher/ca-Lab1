module main;

	wire out;
	reg [4:0] ctrl;
	reg [31:0] in;

	MUX dut (ctrl, in, out); 

	initial begin

     if (! $value$plusargs("in=%b", in)) begin
        $display("done goofed - need 'in'");
        $finish;
     end
     if (! $value$plusargs("ctrl=%b", ctrl)) begin
        $display("done goofed - need 'ctrl'");
        $finish;
     end

		#1; 

		$display("%b", out);

		$finish;

	end

endmodule
