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
		ReadRegister1 = 31;
		ReadRegister2 = 31;
		WriteRegister = 0;
		WriteData = $random; 
	end

	always @ (negedge clk)
	begin
		$display("%b - time %d", clk, $time);
		$display("reg1 %d - %b", ReadRegister1, ReadData1);
		$display("reg2 %d - %b", ReadRegister2, ReadData2);
		$display("wreg %d - %b", WriteRegister, WriteData);
		WriteData = $random; 
		ReadRegister1 = ReadRegister1 + 1;
		ReadRegister2 = ReadRegister2 + 1;
		WriteRegister = WriteRegister + 1;
	end


	initial begin	
		repeat (66) begin	
			#1 clk = ~clk;
		end
	$finish;
	end

endmodule
