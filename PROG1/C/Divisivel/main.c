#include <stdio.h>
#include <stdlib.h>

int main()
{   float n1, n2, resultado;

    printf("Digite o dividendo: ");
    scanf("%f", &n1);
    printf("Digite o divisor: ");
    scanf("%f", &n2);

    if(n2 == 0)
    {
        printf("Impossivel dividir");
        return 1;
    }

    else
    {
        resultado = n1/n2;
        printf("O resultado e: %5.2f", resultado);
    }
}
