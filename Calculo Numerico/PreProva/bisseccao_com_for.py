import math

def f(x): # Função
    return (x**3 + 4*x**2 -10)

def bisseccao(a, b, e):
    contador = 0 # Usamos um contador para contar quantos iterações ocorreu 
    if (f(a) * f(b) < 0): # Caso base: Função tem que ser < 0 
        while (math.fabs((b-a)/2) > e): # Enquanto b-a/2 for maior q a precisao do erro...
            m = (a+b)/2
            contador += 1 # Contador
            print("Interações = ", contador) 

            if f(m) == 0: # Caso m seja 0, encntrou a raiz
                print("A raiz é = ", m)
                break

            elif (f(a) * f(m)) < 0: # Se for negativo o produto das funções, atualiza b = a 
                b = m

            else:
                a = m
        print("O valor aproximado da raiz é = ", m)
    else:
        print("Valor de f(a) = ", f(a)) 
        print("Valor de f(b) = ", f(b)) 
        print("Não cumpre f(a)*f(b) < 0 ") 
        print("Não existe raiz nesse intervalo") 
        

def bisseccao_com_for(a, b, e):
    L = abs(b - a) # Calcula L inicial

    fim = math.ceil((math.log2(L/e)/ math.log2(2)) + 1) # Utiliza a formula para saber n minimo de iterações

    print(fim)


    if (f(a) * f(b) < 0):  
        for x in range(fim): # Percorre a função até valor fim
            m = (a+b)/2
            print("Interações = ", x +1) 

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

bisseccao_com_for(a, b, e)

