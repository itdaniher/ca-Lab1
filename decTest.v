module main;

	wire [31:0] out;
	reg [4:0] in;
	wire enable;

	assign enable = 1'b1;

	DECODER dut (out, in, enable); 

	initial begin

		 if (! $value$plusargs("in=%d", in)) begin
				$display("done goofed - need 'in'");
				$finish;
		 end

		#1;

		 $display("%h", out);
		 $finish;
	end

endmodule
