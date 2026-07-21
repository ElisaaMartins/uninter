# solicite ao usuario o preço de um produto e um percentual de desconto a ser aplicado a ele
# calcule e exiba o valor do desconto e o preço final do produto
preco = float(input('Valor do produto: '))
desconto = float(input('Desconto do produto (0-100%): '))

valorDesconto = preco * (desconto / 100)
precoProduto = preco - valorDesconto

print(f'O produto de R${preco}, com o desconto de {desconto}% (ou R${valorDesconto}), está saindo por R${precoProduto}')
