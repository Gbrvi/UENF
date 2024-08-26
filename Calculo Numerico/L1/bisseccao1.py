import math

def f(x):
    return (x ** 2 - 5)

def bisseccao(a, b, e):
    if (f(a) * f(b) < 0):
        while (math.fabs((b-a)/2) > e):
            m = (a+b)/2

            if f(m) == 0:
                print("A raiz é = ", m)
                break

            elif (f(a) * f(m)) < 0:
                b = m
            else:
                a = m
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