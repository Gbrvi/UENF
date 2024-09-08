def f(x):
    return (x+1)*(x-1)*(x-3)


def encontrar_intervalo(x0, incremento): # Valor incial e incremento
    x1 = x0 + incremento # X1 é definido como a soma do inicial com incremento
    while f(x0) * f(x1) > 0: # Condição para achar a e b. Para quando encontra x0 e x1 qual aplicado em f(x) seu produto seja negativo
        x0 = x1
        x1 = x0 + incremento
    return x0, x1