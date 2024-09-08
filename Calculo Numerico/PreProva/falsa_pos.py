import numpy as np
import math
import matplotlib.pyplot as plt

def f(x):
    return x**2 - 8*x

def grafico(a,b):
    vetor_x = np.linspace(a-2, b+2, 100) #  Gera 100 pontos igualmente espaçados no intervalo
    vetor_y = f(vetor_x) #Calcula f(x) para cada ponto em vetor_x

    plt.plot(vetor_x, vetor_y, color='red') # Desenha o grafico
    #Plot da linha
    xline, yline = [a,b], [f(a), f(b)] # Parametros para a falsa posição
    plt.plot(xline, yline, marker='o') # Desenha a falsa pos

    plt.axis([a-1, b+1, f(a) - 10, f(b) + 10]) 
    plt.title(f" x**2 - 8*x")  
    plt.xlabel("eixo x")
    plt.ylabel("eixo y")
    plt.grid()
    plt.show()

# Função que calcula a raiz aproximada usando o método da falsa posição
def raiz(a, b):
    return (a*f(b) - b * f(a)) / (f(b) - f(a))

# Função que aplica o método da falsa posição 
def FalsaPos(a, b, e):

    raiz_value = raiz(a, b)  # Calcula a raiz inicial usando a fórmula da falsa posição
    if f(a) * f(b) < 0: # Continua iterando até que a função na raiz aproximada seja menor que o erro
        while (math.fabs(f(raiz_value)) > e): 
            raiz_value = raiz(a, b) # Recalcula a raiz aproximada

            # Se a raiz exata for encontrada... 
            if raiz == 0:
                return raiz_value
            
            # Atualiza o intervalo dependendo do sinal da função
            elif f(a) * f(raiz_value) < 0:
                b = raiz_value
            else:
                a = raiz_value
            # Imprime a raiz aproximada encontrada
        print(f"Raiz é:  {raiz_value:.4f}")
    else:
        # Caso f(a) * f(b) >= 0 
        print("Não existe raiz")

# Intervalo inicial e precisão
a = 5
b = 12
e = 0.01

FalsaPos(a, b, 0.01)

grafico(a,b)
