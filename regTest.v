module main;

	reg [31:0] in;
	wire [31:0] out;
	reg clk;

	register dut (out, in, clk);

	initial begin
		in = 32'h55555555;
		clk = 0;
	end


	always @ (negedge clk)
	begin
		$display("time - %d", $time); 
		$display("in %b - out %b", in, out);
		in = ~in;
	end

	always
	begin
		#1 clk = 1;
		#1 clk = 0;
	end

	initial begin
		#10 $finish;
	end

endmodule
