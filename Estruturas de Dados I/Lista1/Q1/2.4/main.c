#include <stdio.h>
#include <stdlib.h>

// Studying the use of calloc

int main()
{
    int **matriz; // Matrix is a double pointer
    int i,j; // Indice [i][j]
    printf("\nDigite as dimensoes da matriz: ");
    scanf("%d %d", &i, &j); // The size of my matrix


    matriz = (int**)calloc(i, sizeof(int*)); // Allocating the first dimension | ALTEADO: Adicioando (int**) e (sizeof(int*))

    if(matriz == NULL)
    {
        printf("\n ERROR: Problema de alocacao de memoria");
        exit(1);
    }

    for(int k=0;k<i;k++)
    {
        matriz[k] = (int*)calloc(j, sizeof(int)); // Allocating memory for each row. // ALTERADO: Adicionado (INT*)CALLOC
        if(matriz[k] == NULL)
        {
            printf("\n ERROR: Problema de alocacao de memoria");
        }
    }

    for(int k=0; k<i; k++){
        for(int x=0; x<j; x++)
        {
            printf("Digite o valor para [%d %d]: ", k,x); //Adding values
            scanf("%d", &matriz[k][x]);
        }
    }

    for(int k=0; k<i; k++)
    {
        for(int x=0; x<j; x++)
        {
            printf("O numero do indice [%d, %d] = %d \n", k,x,matriz[k][x]); // Showing values
        }
    }

    printf("\n Liberando memoria");

    for(int k=0; k<i; k++)
    {
        free(matriz[k]); // Free memory
    }
    free(matriz);

    return 0;
}
