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
		in = ~in;
	end

	initial
	begin
		repeat (4)
		begin
			#1 clk = ~clk;
			$display("time - %d", $time); 
			$display("in %b - out %b", in, out);
		end
	end

endmodule
