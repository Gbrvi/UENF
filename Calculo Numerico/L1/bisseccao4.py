import math

def f(x):
    return (x**3 + 4*x**2 -10)

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

            else:
                a = m
        print("O valor aproximado da raiz é = ", m)
    else:
        print("Valor de f(a) = ", f(a)) 
        print("Valor de f(b) = ", f(b)) 
        print("Não cumpre f(a)*f(b) < 0 ") 
        print("Não existe raiz nesse intervalo") 
        
a = 1
b = 2
e = 0.0001

bisseccao(a, b, e)

# São necessáris 13 interações para encontrar a raiz

