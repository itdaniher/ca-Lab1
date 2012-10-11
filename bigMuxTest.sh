iverilog -o bigMuxTest.vvp bigMuxTest.v regFile.v
for i in $(seq 0 31)
	do echo $i $(vvp bigMuxTest.vvp +ctrl=$i +in5=55555555)
done
rm bigMuxTest.vvp
