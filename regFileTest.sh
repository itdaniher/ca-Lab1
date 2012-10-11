iverilog -o regFileTest.vvp regFileTest.v regFile.v

for i in $(seq 0 31)
	do echo $i $(vvp regFileTest.vvp +ReadRegister1=$i +ReadRegister2=$i)
done
rm regFileTest.vvp
