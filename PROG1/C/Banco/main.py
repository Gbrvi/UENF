# 100, 50, 20, 10, 5, 2, 1
banco = int(input("Valor sacar: "))

nota_100, nota_50, nota_20, nota_10, nota_5, nota_2, nota_1 = 0, 0, 0, 0, 0, 0, 0

notas = [0, 0, 0, 0, 0, 0, 0]

while banco > 0:
    if banco % 100 == 0:
        notas[0] += 1
        banco -= 100

    elif banco % 50 == 0: 
        notas[1] += 1
        banco -= 50

    elif banco % 20 == 0:
        notas[2] += 1
        banco -= 20

    elif banco % 10 == 0: 
        notas[3] += 1
        banco -= 10

    elif banco % 5 == 0:
        notas[4] += 1
        banco -= 5
    
    elif banco % 2 == 0:
        notas[5] += 1
        banco -= 2
    
    elif banco % 1 == 0:
        notas[6] += 1
        banco -= 1

print(f"Você pode sacar combinando {notas[0]} de 100 | {notas[1]} de 50 | {notas[2]} de 20 | {notas[3]} de 10 | {notas[4]} de 5 | {notas[5]}  nota de 2 | {notas[6]} de 1")
