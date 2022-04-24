#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n1, n2, n3, maior = 0;

    printf("Digite o primeiro numero: ");
    scanf("%d", &n1);
    printf("Digite o segundo numero: ");
    scanf("%d", &n2);
    printf("Digite o terceiro numero: ");
    scanf("%d", &n3);

    if (n1 > maior)
    {
        maior = n1;
    }

    if (n2 > maior)
    {
        maior = n2;
    }
    if (n3 > maior)
    {
        maior = n3;
    }

    printf("O maior numero e: %d", maior);
}

