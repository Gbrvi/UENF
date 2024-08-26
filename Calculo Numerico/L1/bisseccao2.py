import math

def f(x):
    return (x ** 2 - 5)

def bisseccao(a, b, e):
    contador = 0
    if (f(a) * f(b) < 0):
        while (math.fabs((b-a)/2) > e):
            m = (a+b)/2
            contador += 1
            print("Interações = ", contador) 

            if f(m) == 0:
                print("A raiz é = ", m)
                break

            elif (f(a) * f(m)) < 0:
                b = m
                print("To aqui ein")

            else:
                a = m
        print("O valor aproximado da raiz é = ", m)
    else:
        print("Valor de f(a) = ", f(a)) 
        print("Valor de f(b) = ", f(b)) 
        print("Não cumpre f(a)*f(b) < 0 ") 
        print("Não existe raiz nesse intervalo") 
        
a = 2.2303
b = 6
e = 0.01

bisseccao(a, b, e)

# São feitas 8 interações. Em nenhum momento M se torna o intervalo de A, isso indica que o sinal da função se mantem < 0 sempre, ou seja, vai ponto M sempre é B 

