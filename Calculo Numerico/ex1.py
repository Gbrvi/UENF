from math import pi, e, sqrt, factorial

def erro_absoluto(num, x):
    erro_abs =  abs(num - x)
    return f"O erro absoluto é: {erro_abs:.6f}"

def erro_relativo(num, x):
    erro_rel = abs((num - x)/num)
    return  f"O erro relativo é: {erro_rel:.6f}"

def calcular(num, x):
    print("-=-=-=-=-=-=-=-=-=-=-=-")
    print(f"Valores num = {num} x = {x}")
    print(erro_absoluto(num, x))
    print(erro_relativo(num, x))
    print("-=-=-=-=-=-=-=-=-=-=-=-")



calcular(1.234, 1.233)

calcular(pi, 22/7)

calcular(e, 2.718)

calcular(pi, 3.1416)

calcular(sqrt(2), 1.414)

calcular(e**10, 22.000)

calcular(factorial(8), 39.900)

calcular(10**pi, 1.400)

calcular(factorial(9), sqrt(18*pi) * ((9/e)**9))

# QUESTÃO 2:   150 - 150 * 10^-3, 150 + 150 * 10^-3
#              900 + 900  * 10^-3, 900 + 900 * 10^-3
#              1500 + 1500 * 10^-3, 1500 + 1500 * 10^-3 
#              90 + 90 * 10^-3, 90 + 90 * 10^-3
# QUESTÃO 3:
#               pi - pi * 10^-4, pi + pi * 10^-4
#               e - e * 10^-4, e + e  * 10^-4
#               raiz 2 - raiz 2 * 10^-4, raiz 2 + raiz 2 * 10^-4
#               rai 7 - raiz 7 * 10 ^-4, raiz 7 + raiz 7 * 10^-4 