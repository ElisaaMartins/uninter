'''
Um cinema cobra preços diferentes para os ingressos, de acordo com a idade da pessoa.
    Se a pessoa tiver menos de 3 anos de idade, o ingresso será gratuito;
    se tiver entre 3 e 12 anos, o ingresso custará R$ 15;
    se tiver mais de 12 anos, custará R$ 30

1. Escreva um laço em que você pergunte a idade aos usuários e, então, informe-lhes o preço do ingresso do cinema
2. Encerre o laço, usando um break quando o usuário digitar zero
3. · Após encerrar o laço, apresente na tela o total de pessoas que compraram ingressos, o total de dinheiro arrecadado
e a média de idade das pessoas
'''

total = 0
dinheiro = 0
acc_idade = 0

while True:
    idade = int(input("Qual sua idade?"))
    if idade == 0:
        break

    total += 1
    acc_idade += idade
    if idade < 3:
        ingresso = 0
    else:
        if idade > 12:
            ingresso = 30
        else:
            ingresso = 15

    dinheiro += ingresso

if total > 0:
    media = acc_idade / total
    print(f"Total de pessoas: {total}")
    print(f"Total arrecadado: {dinheiro}")
    print(f"Média arrecadada: {media}")