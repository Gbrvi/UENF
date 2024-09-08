import numpy as np
import matplotlib.pyplot as plt
import os

# np.sin(x) - x =

def f(x):
    return np.exp(-x/4)*(2-x)-1

def g(x):
    return 2 - np.exp(x/4)

def f_de_x(x):
    return x

def ponto_fixo_interativo(x0, tol, max_iter):
    x = x0
    for i in range(max_iter):
        x_new = g(x)
        if np.abs(x_new - x) < tol:
            print(f"Convergencia alcançada após {i+1} iterações")
            return x_new
        x = x_new
    print("Numero maximo de iterações alcançado. ")
    return x 
    
def grafico(a,b):
    fig, ax = plt.subplots(nrows=1, ncols=2)
    vetor_x = np.linspace(a,b, 100) # Gera um vetor X com intervalo do grafico
    vetor_y = f(vetor_x) #Gera um vetor Y com base nos valores da funcao

    vetor_gy = g(vetor_x) # G de X

    vetor_hy = f_de_x(vetor_x) # Fzinho


    ax[0].plot(vetor_x, vetor_y, color='red')
    ax[0].axhline(0, color="r")
    ax[0].axvline(raiz, color='r')
    ax[0].axis([a,b, f(a)-5, f(b)+5])
    plt.title(r"raiz = {:.4f}".format(raiz))
    plt.xlabel("eixo x")
    plt.ylabel("eixo y")


    ax[1].plot(vetor_x, vetor_gy)
    ax[1].plot(vetor_x, vetor_hy, color='red')
    ax[1].axis([a,b, f(a)-5, f(b)+5])

    plt.grid()
    plt.show()

x0 = 0.80
tol = 1e-3
max_iter = 500
os.system("cls")
raiz = ponto_fixo_interativo(x0, tol, max_iter)
print(f"A raiz aproximada é: {raiz:.8}")
grafico(0, raiz+1)

