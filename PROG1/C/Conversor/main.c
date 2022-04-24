#include <stdio.h>
#include <stdlib.h>

int main()
{
    float conversor, dolar, cotacao = 4.94;

    printf("Quantidade: ");
    scanf("%f", &dolar);
    conversor = (cotacao * dolar);
    printf("%.2f em dolar equivale a %.2f reais", dolar,conversor);
    return 0;
}
