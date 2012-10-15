lines = []
for line in open("data.txt").read().splitlines():
	line = line.split(" - ")
	line[0] = line[0].split(" ")
	if '' in line[0]:
		line[0].remove('')
	lines.append(line)

registers = 32*[32*'x']

for line in lines:
	regCt = int(line[0][1])
	if line[0][0] == "wreg":
		registers[regCt] = line[1]
		registers[0] = 32*'0'
	else:
		if (registers[regCt] != line[1]):
			if registers[regCt] != 32*'x':
				print "FAIL"
				print line[1]
				print registers[regCt]
				quit()

print "PASS"
