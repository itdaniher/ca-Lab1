lines = []
for line in open("data.txt").read().splitlines():
	line = line.split(" - ")
	line[0] = line[0].split(" ")
	if '' in line[0]:
		line[0].remove('')
	lines.append(line)

registers = 32*[32*'x']

for line in lines:
	if line[0][0] == "wreg":
		registers[int(line[0][1])] = line[1]
		registers[0] = 32*'0'
	else:
		try:
			assert registers[int(line[0][1])] == line[1]
		except:
			try:
				assert registers[int(line[0][1])] == 32*'x'
			except:
				print "FAIL"
				print line[1]
				print registers[int(line[0][1])]
				quit()
print "PASS"
