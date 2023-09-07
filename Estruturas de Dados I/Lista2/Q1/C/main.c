#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "pilha.h"

int main()
{
    STACK* pilha;
    float* dado;
    bool terminado = false;

    pilha = createStack();

    while (!terminado){
        dado = (float*)malloc(sizeof(float));
        printf("Digite um valor. [-1 para sair]\n");
        scanf("%f", dado);
        if(fullStack(pilha) || *dado == -1)
            terminado = true;
        else{
            pushStack(pilha, dado);
        }
    }
    while(!emptyStack(pilha))
        {
        dado = (float*)popStack(pilha);
        printf("%.2f\n", *dado);
        free(dado);
        }
}
