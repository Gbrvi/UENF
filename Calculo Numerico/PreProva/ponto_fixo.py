import numpy as np
import matplotlib.pyplot as plt
import os

# Função f(x) dada: é a função que estamos tentando resolver.
def f(x):
    return np.exp(-x / 4) * (2 - x) - 1

# Função de iteração g(x), da familia de f(x). Queremos encontrar x tal que g(x) = x.
# A ideia do ponto fixo é reescrever f(x) de uma maneira que possamos iterar sobre g(x).
def g(x):
    return 2 - np.exp(x / 4)

# Função identidade: usada no gráfico para comparar o ponto de interseção entre g(x) e f_de_x(x) = x.
def f_de_x(x):
    return x

# Função principal que implementa o método do ponto fixo.
def ponto_fixo_interativo(x0, tol, max_iter):
    x = x0  # x0 é o chute inicial dado.
    
    # Loop de iterações do método do ponto fixo.
    for i in range(max_iter):
        # Aplica a função g(x) para gerar um novo valor.
        x_new = g(x)
        
        # Verifica se a diferença entre x_new e x é menor que a tolerância, ou seja, se convergiu.
        if np.abs(x_new - x) < tol:
            print(f"Convergência alcançada após {i+1} iterações")
            return x_new
        
        # Atualiza o valor de x para o próximo ciclo.
        x = x_new
    
    # Se o número máximo de iterações for alcançado sem convergência, avisa o usuário.
    print("Número máximo de iterações alcançado.")
    return x 

# Definições iniciais: valor inicial, tolerância e máximo de iterações.
x0 = 0.80
tol = 1e-3
max_iter = 500

# Limpa a tela (funciona no terminal)
os.system("cls")

# Chama a função do ponto fixo com as condições iniciais.
raiz = ponto_fixo_interativo(x0, tol, max_iter)

# Imprime o resultado da raiz aproximada com 8 casas decimais.
print(f"A raiz aproximada é: {raiz:.8}")
