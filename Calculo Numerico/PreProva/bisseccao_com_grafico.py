import math
import numpy as np
import matplotlib.pyplot as plt 

def plot(a, b):
    xp = np.linspace(a, b, 100) # Gera 100 pontos espaçados no intervalo (a,b)

    yp = f(xp) # Calcula valores para Yp com base no array anterior gerado (xp)

    plt.plot(xp, yp, color='blue') #Plota o grafico
    plt.title(' função x ** 2 - 5 no intervalo [0,1]')
    plt.xlabel("Eixo X")
    plt.ylabel("Eixo Y")

    plt.grid() #Facilita visualização dos pontos

    plt.show() # Exibe grafico

def f(x):
    return (x ** 2 - 5) # Função 

def bisseccao(a, b, e):
    if (f(a) * f(b) < 0): # Condição inicial. O produto da função precisa ser < 0 
        while (math.fabs((b-a)/2) > e): # Enquanto b-a/2 for maior q o erro.. 
            m = (a+b)/2 # Ponto medio

            if f(m) == 0: # Se m = 0, logo encontrou raiz exata
                print("A raiz é = ", m)
                break

            elif (f(a) * f(m)) < 0: # Se o produto é menor que zero, atualiza  b para ser M 
                b = m
            else:
                a = m # Caso contrario, a = m
        print("O valor aproximado da raiz é = ", m)
    else:
        print("Valor de f(a) = ", f(a)) 
        print("Valor de f(b) = ", f(b)) 
        print("Não cumpre f(a)*f(b) < 0 ") 
        print("Não existe raiz nesse intervalo") 
        
a = 0
b = 1
e = 0.01

#Não existe raiz nesse intervalo

bisseccao(a, b, e)

plot(0,1)