'''
Dada uma lista contendo as notas de alunos em uma disciplina,
escreva uma expressão para:
    notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
a) Encontrar quantos alunos tiraram nota 7
b) Alterar a última nota para 4

    notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
c) Encontrar a maior nota
d) Ordenar a lista de notas
e) A média das notas

'''

notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
print(notas.count(7))

notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
notas[-1] = 4
print (notas)

notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
notas.sort()
print(notas)

notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
print(max(notas))

notas = [9, 7, 7, 10, 3, 9, 6, 6, 2]
print(sum(notas) / len(notas))