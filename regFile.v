module DECODER(OUT, IN, ENABLE);
 
  output [31:0] OUT;
  reg [31:0] OUT;
  input [4:0] IN;
  input ENABLE;
 
  always @ (ENABLE) begin
    case (ENABLE)
      0 : OUT = 0;
      1 : OUT = 1 << IN;
    endcase
  end
 
endmodule

module BIGMUX(CTRL, in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, out);
 
	output [31:0] out;
	input [4:0] CTRL;
	input [31:0] in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31;

	reg out;

	always @ (CTRL) begin
		case (CTRL)
			00 : out=in0;
			01 : out=in1;
			02 : out=in2;
			03 : out=in3;
			04 : out=in4;
			05 : out=in5;
			06 : out=in6;
			07 : out=in7;
			08 : out=in8;
			09 : out=in9;
			10 : out=in10;
			11 : out=in11;
			12 : out=in12;
			13 : out=in13;
			14 : out=in14;
			15 : out=in15;
			16 : out=in16;
			17 : out=in17;
			18 : out=in18;
			19 : out=in19;
			20 : out=in20;
			21 : out=in21;
			22 : out=in22;
			23 : out=in23;
			24 : out=in24;
			25 : out=in25;
			26 : out=in26;
			27 : out=in27;
			28 : out=in28;
			29 : out=in29;
			30 : out=in30;
			31 : out=in31;
			default : out=32'b0;
		endcase
	end

endmodule
 
 
module D_FF (q, d, clk);

	output q;
	input d, clk;
	reg q; 

	always @(posedge clk) 
	q = d;

endmodule
 
 
module register(OUT, IN, clk);

	input [31:0] IN;
	output [31:0] OUT;
	input clk;

	D_FF dff0 (OUT[0], IN[0], clk);
	D_FF dff1 (OUT[1], IN[1], clk);
	D_FF dff2 (OUT[2], IN[2], clk);
	D_FF dff3 (OUT[3], IN[3], clk);
	D_FF dff4 (OUT[4], IN[4], clk);
	D_FF dff5 (OUT[5], IN[5], clk);
	D_FF dff6 (OUT[6], IN[6], clk);
	D_FF dff7 (OUT[7], IN[7], clk);
	D_FF dff8 (OUT[8], IN[8], clk);
	D_FF dff9 (OUT[9], IN[9], clk);
	D_FF dff10 (OUT[10], IN[10], clk);
	D_FF dff11 (OUT[11], IN[11], clk);
	D_FF dff12 (OUT[12], IN[12], clk);
	D_FF dff13 (OUT[13], IN[13], clk);
	D_FF dff14 (OUT[14], IN[14], clk);
	D_FF dff15 (OUT[15], IN[15], clk);
	D_FF dff16 (OUT[16], IN[16], clk);
	D_FF dff17 (OUT[17], IN[17], clk);
	D_FF dff18 (OUT[18], IN[18], clk);
	D_FF dff19 (OUT[19], IN[19], clk);
	D_FF dff20 (OUT[20], IN[20], clk);
	D_FF dff21 (OUT[21], IN[21], clk);
	D_FF dff22 (OUT[22], IN[22], clk); 
	D_FF dff23 (OUT[23], IN[23], clk); 
	D_FF dff24 (OUT[24], IN[24], clk); 
	D_FF dff25 (OUT[25], IN[25], clk); 
	D_FF dff26 (OUT[26], IN[26], clk); 
	D_FF dff27 (OUT[27], IN[27], clk); 
	D_FF dff28 (OUT[28], IN[28], clk); 
	D_FF dff29 (OUT[29], IN[29], clk); 
	D_FF dff30 (OUT[30], IN[30], clk); 
	D_FF dff31 (OUT[31], IN[31], clk);			 
endmodule
 
module regfile(ReadData1, ReadData2, WriteData, ReadRegister1, ReadRegister2, WriteRegister, RegWrite, clk);
 
	input [4:0] ReadRegister1, ReadRegister2, WriteRegister;
	input RegWrite, clk;
	input [31:0] WriteData;
	output [31:0] ReadData1, ReadData2;

	wire [31:0] regout0, regout1, regout2, regout3, regout4, regout5, regout6, regout7, regout8, regout9, regout10, regout11, regout12, regout13, regout14, regout15, regout16, regout17, regout18, regout19, regout20, regout21, regout22, regout23, regout24, regout25, regout26, regout27, regout28, regout29, regout30, regout31;
	reg [31:0] regin0, regin1, regin2, regin3, regin4, regin5, regin6, regin7, regin8, regin9, regin10, regin11, regin12, regin13, regin14, regin15, regin16, regin17, regin18, regin19, regin20, regin21, regin22, regin23, regin24, regin25, regin26, regin27, regin28, regin29, regin30, regin31;

	assign regout0 = 32'b0;
	register reg1(regout1, regin1, clk);
	register reg2(regout2, regin2, clk);
	register reg3(regout3, regin3, clk);
	register reg4(regout4, regin4, clk);
	register reg5(regout5, regin5, clk);
	register reg6(regout6, regin6, clk);
	register reg7(regout7, regin7, clk);
	register reg8(regout8, regin8, clk);
	register reg9(regout9, regin9, clk);
	register reg10(regout10, regin10, clk);
	register reg11(regout11, regin11, clk);
	register reg12(regout12, regin12, clk);
	register reg13(regout13, regin13, clk);
	register reg14(regout14, regin14, clk);
	register reg15(regout15, regin15, clk);
	register reg16(regout16, regin16, clk);
	register reg17(regout17, regin17, clk);
	register reg18(regout18, regin18, clk);
	register reg19(regout19, regin19, clk);
	register reg20(regout20, regin20, clk);
	register reg21(regout21, regin21, clk);
	register reg22(regout22, regin22, clk);
	register reg23(regout23, regin23, clk);
	register reg24(regout24, regin24, clk);
	register reg25(regout25, regin25, clk);
	register reg26(regout26, regin26, clk);
	register reg27(regout27, regin27, clk);
	register reg28(regout28, regin28, clk);
	register reg29(regout29, regin29, clk);
	register reg30(regout30, regin30, clk);
	register reg31(regout31, regin31, clk);

	always @ (posedge clk) begin
		case (WriteRegister)
			00 : regin1=WriteData;
			01 : regin1=WriteData;
			02 : regin2=WriteData;
			03 : regin3=WriteData;
			04 : regin4=WriteData;
			05 : regin5=WriteData;
			06 : regin6=WriteData;
			07 : regin7=WriteData;
			08 : regin8=WriteData;
			09 : regin9=WriteData;
			10 : regin10=WriteData;
			11 : regin11=WriteData;
			12 : regin12=WriteData;
			13 : regin13=WriteData;
			14 : regin14=WriteData;
			15 : regin15=WriteData;
			16 : regin16=WriteData;
			17 : regin17=WriteData;
			18 : regin18=WriteData;
			19 : regin19=WriteData;
			20 : regin20=WriteData;
			21 : regin21=WriteData;
			22 : regin22=WriteData;
			23 : regin23=WriteData;
			24 : regin24=WriteData;
			25 : regin25=WriteData;
			26 : regin26=WriteData;
			27 : regin27=WriteData;
			28 : regin28=WriteData;
			29 : regin29=WriteData;
			30 : regin30=WriteData;
			31 : regin31=WriteData;
		endcase
	end

	BIGMUX bigmux1 (ReadRegister1, regout0, regout1, regout2, regout3, regout4, regout5, regout6, regout7, regout8, regout9, regout10, regout11, regout12, regout13, regout14, regout15, regout15, regout17, regout18, regout19, regout20, regout21, regout22, regout23, regout24, regout25, regout26, regout27, regout28, regout29, regout30, regout31, ReadData1);
	BIGMUX bigmux2 (ReadRegister2, regout0, regout1, regout2, regout3, regout4, regout5, regout6, regout7, regout8, regout9, regout10, regout11, regout12, regout13, regout14, regout15, regout16, regout17, regout18, regout19, regout20, regout21, regout22, regout23, regout24, regout25, regout26, regout27, regout28, regout29, regout30, regout31, ReadData2);
	
endmodule
