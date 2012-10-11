module main;

	reg [4:0] ReadRegister1, ReadRegister2, WriteRegister;
	reg [31:0] WriteData;
	wire [31:0] ReadData1, ReadData2;
	reg RegWrite;
	reg clk;

	regfile dut (ReadData1, ReadData2, WriteData, ReadRegister1, ReadRegister2, WriteRegister, RegWrite, clk);
	initial begin
		clk = 0;
		RegWrite = 1'b1;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 1;
		WriteData = 32'h55555555;
	end

	always @ (negedge clk)
	begin
		WriteData = ~WriteData;
		$display("reg1 %d - %b", ReadRegister1, ReadData1);
		$display("reg2 %d - %b", ReadRegister2, ReadData2);
		$display("write %d - %b", WriteRegister, WriteData);
		ReadRegister1 = ReadRegister1 + 1;
		ReadRegister2 = ReadRegister2 + 1;
		WriteRegister = WriteRegister + 1;
	end

	always
	begin
		#1 clk = 0;
		#1 clk = 1;
	end

	initial begin
		#20 $finish;
	end

endmodule
