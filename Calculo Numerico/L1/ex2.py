from math import log, ceil

def f(x):
    return x ** 2 -8 # Definicao da funcao

def bissecao(f, a, b, e):
    fa = f(a) # Calcula a função para intervalo A
    if fa == 0.0: # Caso seja 0, entao é a raiz
        return a
    fb = f(b) # Calcula a funcao para intervalo B
    if fb == 0.0:
        return b # Caso seja 0, entao é a raiz

    if fa*fb < 0.0: #Verifica se existe raiz no intervalo
        n = ceil(log(abs(b-a)/e)/log(2.0)) # Calcula o numero maximo de interações
        for i in range(n): 
            m = 0.5*(a+b); fm = f(m) # Calcula o ponto medio, em seguida, calcula a função com M sendo o valor de X
            if fm == 0.0: # Se for zero, é porque é a raiz
                return m
            if fb*fm < 0.0: # Se os sinais de fb e fm forem opostos, a raiz está no intervalo [m, b]
                a = m
                fa = fm
            else:  # Caso contrário, a raiz está no intervalo [a, m]
                b = m
                fb = fm
        return (a+b)/2.0 # Retorna após as interações o valor máximo aproximado
    else:
        print("Nao existe raiz no intervalo")
        return None
    
bissecao(f, )