import math

def f(x):
    return (2 * x**3 - x**2 + x - 1)

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
                print("To em B ein")

            else:
                print("To em A ein kk")
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

bisseccao(a, b, e)

# São feitas 9 interações em [-4,4] 
# São feita 6 interações em [0,1]

