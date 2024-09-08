import sympy as sp
import numpy as np
import matplotlib.pyplot as plt

# Função x*log(x) - 1
def f_sym(x):
    return x * sp.log(x) - 1

# Função numérica para ser usada com numpy
def f_num(x):
    return x * np.log(x) - 1

# Método de Newton
def newton(p0, max_iter, precisao):
    iteracoes = 0
    error_x = 1
    epsilon = precisao
    x = sp.symbols("x")  # Definindo x como simbólico para a derivada
    p0_aux = float(p0)

    print("Método de Newton")
    while (error_x > epsilon) and (iteracoes < max_iter):
        d = sp.diff(f_sym(x), x)  # Calcula derivada de f(x) simbolicamente
        vfuncao = f_sym(p0_aux)  # Valor da função no ponto p0_aux
        vderivada = d.subs(x, p0_aux)  # Derivada no ponto p0_aux
        p = p0_aux - vfuncao / vderivada  # f(p0_aux) / f'(p0_aux)
        
        error_x = abs(p - p0_aux)  # Calcula erro entre novo valor de p e p0_aux
        print(f"Iteração = {iteracoes}, valor de p = {p}")
        
        iteracoes += 1
        p0_aux = p
    return p

# Função para plotar o gráfico
def grafico(a, b):
    vetor_x = np.linspace(a, b, 100)  # Gera um vetor X com intervalo do gráfico
    vetor_y = f_num(vetor_x)  # Gera um vetor Y com base nos valores numéricos da função

    plt.plot(vetor_x, vetor_y, color='red')  # Desenha o gráfico
    plt.axhline(0, color='black',linewidth=0.5)  # Eixo x
    plt.axvline(0, color='black',linewidth=0.5)  # Eixo y
    plt.xlabel("eixo x")
    plt.ylabel("eixo y")
    plt.grid(True)
    plt.show()

# Parâmetros de execução
max_iteracao = 100

# Chamando o método de Newton
print(f"Zero aproximado: {newton(0.5, max_iteracao, 0.0002)}")

# Plotando o gráfico no intervalo [2, 3]
grafico(2, 3)
