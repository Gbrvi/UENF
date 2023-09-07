#include <stdio.h>
#include <stdlib.h>
#include <time.h>

//This code is an example of Matrix in C

int **aloca(int i, int j);
void leitura(int **p,int i, int j);
void imprime(int **p, int i, int j);
void libera(int **p, int i, int j);

int main()
{
    // Cria matrizes
    int **matrix;
    int **m2;

    // Alocating, reading, printing

    matrix = aloca(2,3);
    m2 = aloca(3,2);

    leitura(matrix, 2,3);
    leitura(m2, 3, 2);

    imprime(matrix,2,3);
    imprime(m2, 3, 2);

    libera(matrix, 2, 3);
    libera(m2, 3, 2);

  return 0;
}

int **aloca(int i, int j) // A matrix needs double pointer
{
    int **p; // A matrix two dimensions
    p = (int **)calloc(i, sizeof(int*)); // Allocating rows // ALTERADO: (sizeof(int)) -> (sizeof(int*)) | calloc -> (int**)calloc

    if(p==NULL) // If there's some error allocating memory..
    {
        printf("\nERROR: Problema na alocacao de memoria");
        exit(-1);
    }

    for(int x=0; x<i; x++) // Allocating columns
    {
        p[x] = (int*)calloc(j, sizeof(int)); // ALTERADO: calloc() -> (int*)calloc
        if(p[x] == NULL)
        {
            printf("\nErro de alocacao: "); // If there's some error allocating memory..
            exit(-1);
        }
    }
    return p; // Retorna P.
}

void leitura(int**p, int i, int j)
{
    int x, y;
    srand(time(NULL)); // Random values
    for(x=0; x<i;x++){
        for(y=0;y<j;y++)
        {
            printf("Entre com os elementos %d, %d -> ", x, y);
            scanf("%d", &p[x][y]);
        }
    }
}

void imprime(int **p, int i, int j)
{
    int x,y;
    for(x=0; x<i; x++)
    {
        for(y=0;y<j;y++)
        {
            printf("\nElemento [%d][%d] = %d ", x, y, p[x][y]); // Showing the values
        }
    }
}

void libera(int **p, int i, int j)
{
    for(int x=0; x<i; x++)
    {
        free(p[x]); //Free columns by columns
    }

    free(p); // Free rows

    printf("\n Liberei");
}
