#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{   float n1, n2;
    char operador;
    int resp;

    do{
        printf("Informe o primeiro numero: ");
        scanf("%f", &n1);
        printf("Operacao: ");
        scanf(" %c", &operador);
        printf("Informe o segundo numero: ");
        scanf("%f", &n2);
    } while ((operador != '+') && (operador != '-') && (operador != '*') && (operador != '/'));

    if (operador == '+')
    {
        printf("%.2f", n1 + n2);
    }
    if(operador == '-')
    {
        printf("%.2f", n1 - n2);
    }
    if (operador == '*')
    {
        printf("%.2f", n1 * n2);
    }
    if (operador == '/')
    {
        printf("%.2f", n1 / n2);
    }

}
