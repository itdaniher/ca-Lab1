iverilog -o regFileTest.vvp regFileTest.v regFile.v
vvp regFileTest.vvp +cycles=$1 > data.txt 
python regFileTest.py
rm regFileTest.vvp data.txt
