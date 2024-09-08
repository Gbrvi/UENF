import numpy as np
import matplotlib.pyplot as plt
import os

# Função original f(x): e^x - 4x^2
# Essa é a função que estamos tentando resolver
def f(x):
    return np.e**x - 4 * x

# Função de iteração g(x): derivada da função f(x)
# Vamos usar g(x) no método do ponto fixo. Ela é rearranjada para g(x) = x
def g(x):
    return 4 * x**2 / np.e**x

# Função identidade f_de_x(x), ou seja, y = x
# Serve para ser plotada e comparada com g(x)
def f_de_x(x):
    return x

# Método do ponto fixo interativo
def ponto_fixo_interativo(x0, tol, max_iter):
    x = x0  # Valor inicial
    for i in range(max_iter):
        x_new = g(x)  # Aplica g(x) para obter um novo valor de x
        # Verifica se a diferença entre x e x_new é menor que a tolerância (se está convergindo)
        if np.abs(x_new - x) < tol:
            print(f"Convergência alcançada após {i+1} iterações")
            return x_new
        x = x_new  # Atualiza x para a próxima iteração
    print("Número máximo de iterações alcançado.")
    return x

# Função para gerar gráficos
def grafico(a, b):
    # Cria uma figura com dois gráficos lado a lado
    fig, ax = plt.subplots(nrows=1, ncols=2)
    
    # Gera 100 pontos no intervalo [a, b] para plotar as funções
    vetor_x = np.linspace(a, b, 100)
    
    # Calcula f(x) para cada valor de vetor_x
    vetor_y = f(vetor_x)
    
    # Calcula g(x) para cada valor de vetor_x
    vetor_gy = g(vetor_x)
    
    # Calcula a função identidade f_de_x(x) (ou seja, y = x)
    vetor_hy = f_de_x(vetor_x)

    # Primeiro gráfico: função f(x)
    ax[0].plot(vetor_x, vetor_y, color='red')
    ax[0].axhline(0, color="r")  # Linha horizontal no eixo Y = 0
    ax[0].axvline(raiz, color='r')  # Linha vertical na raiz encontrada
    ax[0].axis([a, b, f(a) - 5, f(b) + 5])  # Define os limites dos eixos
    ax[0].set_title(r"Raiz = {:.4f}".format(raiz))  # Título do gráfico
    ax[0].set_xlabel("Eixo X")  # Rótulo do eixo X
    ax[0].set_ylabel("Eixo Y")  # Rótulo do eixo Y

    # Segundo gráfico: g(x) e y = x
    ax[1].plot(vetor_x, vetor_gy, label="g(x)")
    ax[1].plot(vetor_x, vetor_hy, color='red', label="y=x")
    ax[1].axis([a, b, f(a) - 5, f(b) + 5])  # Define os limites dos eixos
    ax[1].set_title("g(x) e y=x")  # Título do gráfico
    ax[1].set_xlabel("Eixo X")  # Rótulo do eixo X
    ax[1].set_ylabel("Eixo Y")  # Rótulo do eixo Y
    ax[1].legend()  # Mostra a legenda
    
    # Adiciona uma grade e exibe os gráficos
    plt.grid()
    plt.show()

# Parâmetros iniciais
x0 = 3  # Valor inicial para o método do ponto fixo
tol = 1e-3  # Tolerância para a convergência
max_iter = 500  # Número máximo de iterações

# Limpa o terminal (opcional)
os.system("cls")

# Executa o método do ponto fixo
raiz = ponto_fixo_interativo(x0, tol, max_iter)

# Exibe a raiz encontrada
print(f"A raiz aproximada é: {raiz:.8}")

# Gera o gráfico da função e da solução
grafico(2, 3)
