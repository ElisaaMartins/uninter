text = input("Digite o texto: ")

# Remove todos os espaços...
text = text.replace(' ','')

# ... e verifica se a palavra é igual à sua versão inversa
if len(text) > 1 and text.upper() == text[::-1].upper():
	print("É palíndromo")
else:
	print("Não é palíndromo")
	