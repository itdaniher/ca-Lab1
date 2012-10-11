module main;

	reg [31:0] in;
	wire [31:0] out;
	reg clk;

	register dut (out, in, clk);

	initial begin
		in = 32'h55555555;
	end

	always @ (negedge clk)
	begin
		$monitor("in %b - in %b", in, out);
		in = ~in;
	end

	always
	begin
		#1 clk = 0;
		#1 clk = 1;
	end

	initial begin
		#1000 $finish;
	end

endmodule
