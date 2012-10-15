# instantiate empty list for contents of logfile
lines = []
# iterate through the lines and parse them
for line in open("data.txt").read().splitlines():
	line = line.split(" - ")
	line[0] = line[0].split(" ")
	if '' in line[0]:
		line[0].remove('')
	lines.append(line)

# instantiate 32 registers, each containing 32 'x's
registers = 32*[32*'x']

# iterate through the lines
for line in lines:
	# regCt gets the ID of the register that is being read or set
	regCt = int(line[0][1])
	# if this line is a write...
	if line[0][0] == "wreg":
		# assign the register at 'regCt' to be the string logged by verilog
		registers[regCt] = line[1]
		# for good measure, ensure reg0 still contains 32 zeroes
		registers[0] = 32*'0'
	else:
		# if the value in the register with an index of regCt isn't equal to the value read
		if (registers[regCt] != line[1]):
			# and if it's also not 'xx...'
			if registers[regCt] != 32*'x':
				# something done broke
				print "FAIL"
				print line
				print registers[regCt]
				quit()
# if everything passes, print "PASS"
print "PASS"
