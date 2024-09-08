import math

#X**3 - 4x -9
# (x+1)*(x-1)*(x-3)

# Funcao 
def f(x):
    return (x+1)*(x-1)*(x-3)

# Calcular ponto medio 
def getPontoMedio(a, b):
    return (a + b) / 2

def encontrar_intervalo(x0, incremento):
    x1 = x0 + incremento
    while f(x0) * f(x1) > 0:
        x0 = x1
        x1 = x0 + incremento
    return x0, x1


def bisseccao(a, b, e): 
    """Regra geral para bissecção: f(a) * f(b) < 0, logo, b = m. 
                                Se f(a) * f(b) > 0, entao a = b"""
    if (f(a) * f(b) < 0): # Primeira condição: O produto das funções deve ser negativo, caso contrario não há raiz nesse intervalo
        while (math.fabs((b-a)/2) > e): # Continua ate que a diferença de a e b seja menor que o erro
            m = getPontoMedio(a, b)  # Pega ponto medio entre a e b

            if f(m) == 0:  # Se f(m) for zero logo encontramos sua raiz exata
                print("A raiz é = ", m)
                break

            elif (f(a) * f(m)) < 0: # Caso contrario, se f(a) * f(b) for negativo, então modifica o intervalo para b = m
                b = m
            else: # Se nao, se for positivo a = m 
                a = m
        print("O valor aproximado da raiz é = ", m)
    else:
        print("Valor de f(a) = ", f(a)) 
        print("Valor de f(b) = ", f(b)) 
        print("Não cumpre f(a)*f(b) < 0 ") 
        print("Não existe raiz nesse intervalo") 

a, b = encontrar_intervalo(0, 0.5)

print(f"Intervalo encontrado: {a} {b}")
bisseccao(-4, 4, 10**-5)
