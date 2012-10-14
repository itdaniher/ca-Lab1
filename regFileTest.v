module main;

	reg [4:0] ReadRegister1, ReadRegister2, WriteRegister;
	reg [31:0] WriteData;
	wire [31:0] ReadData1, ReadData2;
	reg RegWrite;
	reg clk;

	regfile dut (ReadData1, ReadData2, WriteData, ReadRegister1, ReadRegister2, WriteRegister, RegWrite, clk);
	initial begin
		clk = 0;
		RegWrite = 1;
		ReadRegister1 = 30;
		ReadRegister2 = 30;
		WriteRegister = 0;
		WriteData = 32'h55555555;
	end

	always @ (negedge clk)
	begin
		WriteData = ~WriteData;
		ReadRegister1 = ReadRegister1 + 1;
		ReadRegister2 = ReadRegister2 + 1;
		WriteRegister = WriteRegister + 1;
	end

	always @ (posedge clk)
	begin
		$display("time - %d", $time);
		$display("reg1 %d - %b", ReadRegister1, ReadData1);
		$display("reg2 %d - %b", ReadRegister2, ReadData2);
		$display("wreg %d - %b", WriteRegister, WriteData);
	end

	always
	begin
		#1 clk = ~clk;
	end

	initial begin
		#70 $finish;
	end

endmodule
