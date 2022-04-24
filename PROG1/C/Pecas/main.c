#include <stdio.h>
#include <stdlib.h>

int main()
{
    char vendedor[20];
    int codigo;
    float valor, quantidade, comissao;

    printf("Vendedor: ");
    scanf("%s", &vendedor);

    printf("Codigo: ");
    scanf("%d", &codigo);

    printf("Valor: ");
    scanf("%f", &valor);

    printf("Quantidade: ");
    scanf("%f", &quantidade);

    comissao = (0.05 * (quantidade * valor));

    printf("O vendedor %s recebeu %.2f reais de comissao\n", vendedor, comissao);
}
