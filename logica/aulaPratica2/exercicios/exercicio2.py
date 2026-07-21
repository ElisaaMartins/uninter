# pergunte a qtd de km percorridas pelo carro, a qtd de dias que foi alugado
# calcule o preço a pagar, o carro custa R$60 por dia e R$0,15 por km rodado
km = float(input('Qual a quantidade de km percorrido: '))
dias = int(input('Qual a quantidade de dias que esteve com o carro: '))

precoPagar = (60 * dias) + (0.15 * km)

print(f'Você ficou com o carro por {dias} dias e rodou {km} km. Então irá pagar R${precoPagar}')