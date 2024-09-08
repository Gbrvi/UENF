import math

# Baseia na formula Log2(L/e) / log2(2) + 1
def iteracoes_requeridas(a,b,e): 

    L = abs(b - a) # L é definido como abs da diferença de b - a

    fim = math.ceil((math.log2(L/e)/ math.log2(2)) + 1) # Formula descrita acima

    print(fim)