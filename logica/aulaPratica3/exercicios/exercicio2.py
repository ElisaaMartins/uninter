'''
Escreva um algoritmo que leia dois valores numéricos e que pergunte ao usuário qual operação ele deseja realizar:

· a) adição (+),
· b) subtração (-),
· c) multiplicação (*)
· d) divisão (/)

Exiba na tela o resultado da operação desejada
'''

print('CALCULADORA')
print('adição (+)')
print('subtração (-)')
print('multiplicação (*)')
print('divisão (/)')
print('Precione qualquer outra tecla para sair')

op = input('Qual opéração desejada? ')
x = int(input('Digite um valor: '))
y = int(input('Digite outro valor: '))

if (op == '+'):
    res = x + y
    print(f'Resultado de {x} + {y} = {res}')
elif (op == '-'):
    res = x - y
    print(f'Resultado de {x} - {y} = {res}')
elif (op == '*'):
    res = x * y
    print(f'Resultado de {x} * {y} = {res}')
elif (op == '/'):
    res = x / y
    print(f'Resultado de {x} / {y} = {res}')
else:
    print('Encerrando o programa...')