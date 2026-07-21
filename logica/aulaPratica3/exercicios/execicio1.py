'''
Faça um algoritmo que receba três valores, representando os lados de um triângulo fornecidos pelo usuário.
Verifique se os valores formam um triângulo e classifique

· a) Equilátero (três lados iguais)
· b) Isósceles (dois lados iguais)
· c) Escaleno (três lados diferentes)
'''

A = int(input('Digite o 1o lado do triangulo: '))
B = int(input('Digite o 2o lado do triangulo: '))
C = int(input('Digite o 3o lado do triangulo: '))

if ((A > 0 and B > 0 and C > 0) and (A + B  >  C and A + C > B and B + C > A)):
    # se chegou até aqui, é porque o trinagulo é valido, com lados maiores que 0
    if (A != B and A != C and B != C):
        print('Triangulo escaleno')
    else:
        if (A == B and B == C):
            print('Trianfulo equilátero')
        else:
            print('Triangulo isóceles')
else:
    print('Ao menos um dos valores indicados não servem para formar um triangulo')