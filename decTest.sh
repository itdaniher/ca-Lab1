iverilog -o decTest.vvp decTest.v regFile.v
for i in $(seq 0 31)
	do echo $i $(vvp decTest.vvp +in=$i)
done
rm decTest.vvp
