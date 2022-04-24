#include <stdio.h>
#include <stdlib.h>

int main()
{
    int n1, n2, soma, multiplicacao;
    printf("Defina o primeiro numero: ");
    scanf("%d", &n1);
    printf("Defina o segundo numero: ");
    scanf("%d", &n2);
    soma = (n1 + n2);
    multiplicacao = (soma * n1);
    printf("%d * %d = %d", soma, n1, multiplicacao);
    return 0;
}
