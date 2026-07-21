'''
Escreva um algoritmo que mostra, na tela, quatro produtos a serem comprados em uma lanchonete:
    Coxinha – R$ 5,00
    Pastel - R$ 7,00
    Café – R$ 4,00
    Suco - R$ 6,00
'''

print("LANCHONETE")
print("1 - Coxinha RS 5,00")
print("2 - Pastel RS 7,00")
print("3 - Café RS 4,00")
print("4 - Suco RS 6,00")
print("5 - SAIR")

total = 0
while True:
    op = int(input("Qual item gostaria de comprar? "))


    if (op == 1):
        qtd = int(input("Quantas unidades quer comprar? "))
        total = total + qtd * 5.00
    elif (op == 2):
        qtd = int(input("Quantas unidades quer comprar? "))
        total = total + qtd * 7.00
    elif (op == 3):
        qtd = int(input("Quantas unidades quer comprar? "))
        total = total + qtd * 4.00
    elif (op == 4):
        qtd = int(input("Quantas unidades quer comprar? "))
        total = total + qtd * 6.00
    elif (op == 5):
        break
    else:
        print('Produto inválido. Selecione outro')

print(f'\nTotal a pagar neste pedido é de R${total}')