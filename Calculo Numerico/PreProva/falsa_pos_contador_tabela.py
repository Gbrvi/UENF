import numpy as np
import math
import matplotlib.pyplot as plt

def f(x):
    return x**2 - 8*x

def grafico(a,b, iteracao):
    vetor_x = np.linspace(a-2, b+2, 100) # Gera um vetor X com intervalo do grafico
    vetor_y = f(vetor_x) #Gera um vetor Y com base nos valores da funcao

    plt.plot(vetor_x, vetor_y, color='red') # Desenha o grafico
    #Plot da linha
    xline, yline = [a,b], [f(a), f(b)] # Parametros para a falsa posição
    plt.plot(xline, yline, marker='o') # Desenha a falsa pos

    plt.axis([a-1, b+1, f(a) - 10, f(b) + 10]) 
    plt.title(f"Iteração {iteracao}")  
    plt.xlabel("eixo x")
    plt.ylabel("eixo y")
    plt.grid()
    plt.show()


def tabela(a, b, m):
    print("a = {:.4f} | b = {:.4f} | m = {:.4f} | f(a) = {:.4f} | f(m) = {:.4f} | f(b) = {:.4f} | a-b = {:.4f}\n"
          .format(a, b, m, f(a), f(m), f(b), a-b))

def raiz(a, b):
    return (a*f(b) - b * f(a)) / (f(b) - f(a))

def FalsaPos(a, b, e):
    """A diferença é que possui um contador de quantas iterações e a mudança do grafico a cada iteração, além de exibir uma tabela"""
    iteracao = 0

    raiz_value = raiz(a, b)
    if f(a) * f(b) < 0:
        while (math.fabs(f(raiz_value)) > e):
            iteracao += 1

            raiz_value = raiz(a, b)
            tabela(a, b, raiz_value)
            grafico(a, b, iteracao)

            if raiz == 0:
                return raiz_value
            
            elif f(a) * f(raiz_value) < 0:
                b = raiz_value
            else:
                a = raiz_value
        print(f"Raiz é:  {raiz_value:.4f}")
        print(f"Foram feitas:  {iteracao} iteração")
    else:
        print("Não existe raiz")


a = 5
b = 12
e = 0.01

FalsaPos(a, b, 0.01)
