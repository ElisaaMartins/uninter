'''
Escreva um algoritmo em Python em que o
usuário escolhe se ele quer comprar maçãs,
laranjas ou bananas. Deverá ser
apresentado, na tela, um menu com a opção
1 para maçã, 2 para laranja e 3 para banana
'''

match (produto):
    case 1:
        pagar = qtd * 2.3
        print(f'Você comprou {qtd} maças. Total a pagar: {pagar}' )
    case 2:
        pagar = qtd * 3.6
        print(f'Você comprou {qtd} laranjas. Total a pagar: {pagar}' )
    case 3:
        pagar = qtd * 1.85
        print(f'Você comprou {qtd} bananas. Total a pagar: {pagar}' )
    case _:
        print('Produto inexistente!')