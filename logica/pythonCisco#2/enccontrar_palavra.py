word = input("Digite a palavra que deseja encontrar: ").upper()
strn = input("Digite a string onde realizar a busca: ").upper()

found = True
start = 0

for ch in word:
	pos = strn.find(ch, start) 
	if pos < 0:
		found = False
		break
	start = pos + 1
if found:
	print("Sim")
else:
	print("Não")
	   