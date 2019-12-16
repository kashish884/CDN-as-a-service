import re

pattern=re.compile('[0-9]+(?:\.[0-9]+){3}')
with open('out.txt') as f:
	for line in f:
		pat=re.search(pattern,line)
		if pat:
		   print(pat.group())
#		   print("hello")
#
