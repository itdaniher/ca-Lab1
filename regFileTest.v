module main;

	reg [4:0] ReadRegister1, ReadRegister2, WriteRegister;
	reg [31:0] WriteData;
	wire [31:0] ReadData1, ReadData2;
	reg [31:0] cycles;
	reg RegWrite;
	reg clk;


	regfile dut (ReadData1, ReadData2, WriteData, ReadRegister1, ReadRegister2, WriteRegister, RegWrite, clk);
	initial begin
		if (! $value$plusargs("cycles=%d", cycles)) begin
				$display("done goofed - need 'cycles'");
			$finish;                                                                                                                                                                         
		end
		clk = 0;
		RegWrite = 1;
		ReadRegister1 = 0;
		ReadRegister2 = 0;
		WriteRegister = 0;
		WriteData = 0; 
	end

	always @ (negedge clk)
	begin
		$display("reg1 %d - %b", ReadRegister1, ReadData1);
		$display("reg2 %d - %b", ReadRegister2, ReadData2);
		$display("wreg %d - %b", WriteRegister, WriteData);
		WriteData = $random; 
		ReadRegister1 = $random;
		ReadRegister2 = ReadRegister1 - 1;
		WriteRegister = ReadRegister1 + 1;
	end


	initial begin
		repeat (cycles) begin	
			#1 clk = ~clk;
		end
	#1
	$finish;
	end

endmodule
