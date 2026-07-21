# frase qualquer, divide na metade essa frase, imprima na tela somente os dois ultimos caracteres
frase = input('Digite uma frase: ')
tamanho = len(frase)

metadeFrase = frase[:int(tamanho/2)]

print(metadeFrase[-2:])