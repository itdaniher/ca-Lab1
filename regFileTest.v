module main;

	reg [4:0] ReadRegister1, ReadRegister2, WriteRegister;
    wire RegWrite, clk;
   	output [31:0] ReadData1, ReadData2;
	wire [31:0] WriteData;

	regfile dut (ReadData1, ReadData2, WriteData, ReadRegister1, ReadRegister2, WriteRegister, RegWrite, clk);

	initial begin

     if (! $value$plusargs("ReadRegister1=%b", ReadRegister1)) begin
        $display("done goofed - need 'ReadRegister1'");
        $finish;
     end

     if (! $value$plusargs("ReadRegister2=%b", ReadRegister2)) begin
        $display("done goofed - need 'ReadRegister2'");
        $finish;
     end

		#1; 

		$display("ReadData1 %b", ReadData1);
		$display("ReadData2 %b", ReadData2);

		$finish;

	end

endmodule
