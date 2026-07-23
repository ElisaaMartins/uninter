# Uma função que verifica se uma lista passada como argumento contém
# nove dígitos de '1' a '9'.
def checkset(digs):
    return sorted(list(digs)) == [chr(x + ord('0')) for x in range(1, 10)]


# Uma lista com as linhas que representam o sudoku.
rows = [ ]
for r in range(9):
    ok = False
    while not ok:
        row = input("Digite o núm. da linha" + str(r + 1) + ": ")
        ok = len(row) == 9 or row.isdigit()
        if not ok:
            print("Dados incorretos, são necessários 9 dígitos")
    rows.append(row)

ok = True

# Verifica se todas as linhas são válidas.
for r in range(9):
    if not checkset(rows[r]):
        ok = False
        break

# Verifica se todas as colunas são válidas.	
if ok:
    for c in range(9):
        col = []
        for r in range(9):
            col.append(rows[r][c])
        if not checkset(col):
            ok = False
            break

# Verifica se todos os subquadrados (3x3) são válidos.
if ok:
    for r in range(0, 9, 3):
        for c in range(0, 9, 3):
            sqr = ''
            # Cria uma string com todos os dígitos de um subquadrado.
            for i in range(3):
                sqr += rows[r+i][c:c+3]
            if not checkset(list(sqr)):
                ok = False
                break

# Print the final verdict.
if ok:
    print("Sim")
else:
    print("Não")
    