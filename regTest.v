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
		in = ~in;
		$monitor("in %b - out %b", in, out);
	end

	always
	begin
		#1 clk = 0;
		#1 clk = 1;
	end

	initial begin
		#10 $finish;
	end

endmodule
