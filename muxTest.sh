iverilog -o muxTest.vvp muxTest.v regFile.v

for i in $(seq 0 31)
	do echo $i $(vvp muxTest.vvp +in=55555555 +ctrl=$i)
done
rm muxTest.vvp
