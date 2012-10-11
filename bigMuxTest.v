module main;

	wire [31:0] out;
	reg [4:0] ctrl;
	reg [31:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31;
	wire [1023:0] init;

	BIGMUX dut (ctrl, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, out);

	assign init = {in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31};

	assign init = 1023'b0;

	initial begin

     if (! $value$plusargs("in5=%h", in5)) begin
        $display("done goofed - need 'in5'");
        $finish;
     end

     if (! $value$plusargs("ctrl=%d", ctrl)) begin
        $display("done goofed - need 'ctrl'");
        $finish;
     end

		#1; 

		$display("%b", out);

		$finish;

	end

endmodule
