#include <stdio.h>
#include <stdlib.h>

// Criando uma estrutura de pilha (Ultimo a entrar, primeiro a sair)
typedef struct Pilha
{
    int array[50];
    int count;
}PILHA;

// Recursividade
int binario(int value, PILHA *p)
{
    int resto;
    if(value == 1) // caso base
    {
        pushPilha(p,value);
        return value;
    }

    resto = value % 2;  // Conversor
    pushPilha(p, resto);

    return binario(value / 2, p); // Recursividade
}

// Adicionar elementos a pilha
int pushPilha(PILHA* p, int value)
{
    // Verificar se não passou do limite da pilha
    if(p->count >= 20)
    {
        return -1;
    }
    // Adicionar a posicao da pilha o valor
    p->array[p->count] = value;
    p->count++; // Aumentar o contador
    return 0;
}

void printPilha(PILHA *p)
{ // Exbir pilha
    for(int i = (p->count-1); i >= 0; i--)
    {
        printf("%d ", p->array[i]);
    }
}

PILHA* createPilha(PILHA* p)
{ // Criar pilha
    p = (PILHA*)malloc(sizeof(PILHA));
    if(p)
    {
        p->count = 0;
    }

    return p;
}

int main()
{
    //Definição e alocacao de memoria da pilha

    PILHA* p;

    p = createPilha(p);

    binario(120, p);

    printPilha(p);
}
