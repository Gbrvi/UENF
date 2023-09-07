#include <stdio.h>
#include <stdlib.h>

void aloca(int ***p, int x, int y)
{
    int i;
    *p = (int**)malloc(sizeof(int*) * x); // Alterado: (sizeof(int)) para (sizeof(int*))
    if(*p==NULL)
    {
        printf("\nErro de alocacao de memoria!");
        exit(1);
    }

    for(i=0; i<y; i++)
    {
        (*p)[i] = (int*)malloc(sizeof(int)*y);
        if((*p)[i]==NULL)
        {
            printf("\nErro de alocacao de memoria");
            exit(1);
        }
    }
}

int main()
{printf("Hello world!\n");
    int **p;
    int i,k;

    aloca(&p,4,5);

    for(i=0;i<4;i++)
    {
        for(k=0;k<5;k++)
        {
            p[i][k] = i+k;
        }
    }

    for(i=0;i<4;i++)
    {
        for(k=0;k<5;k++)
        {
            printf("%d ",p[i][k]);
        }

        printf("\n");

    }

    // Não havia essa parte do código
    for(i=0; i<4; i++)
    {
        free(p[i]);
    }

        free(p); // NÃO HAVIA

    return 0;
}
