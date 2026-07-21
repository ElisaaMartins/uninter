# se o ano é divisivel por 4 'pode ser ano bissexto', se não 'não é ano bissexto'
ano = 1993

if (ano % 4 == 0):
    print('Ano pode ser bissexto!')
else:
    print('Ano definitivamente não é bissexto!')


# se as variaveis cima e baixo = True 'decida-se', se não 'voce escolheu um caminho'
cima = True
baixo = True

if (cima == True and baixo == True):
    print('Decida-se')
else:
    print('Você escolheu um camuinho')