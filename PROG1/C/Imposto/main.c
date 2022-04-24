#include <stdio.h>
#include <stdlib.h>

int main()
    // declarando as váriaveis
{   float sal;

    printf("Salário: ");
    scanf("%f", &sal);
    // Condicionais
    if(sal < 0)
    {
        printf("Impossivel salar negativo");
        return 1;
    }
    if(sal < 300)
    {
        sal -= (sal * 0.05); // Calculando Imposto
    }
    else if(sal >= 300 && sal <=1200)
    {
        sal -= (sal * 0.10);
    }
    else
    {
        sal -= (sal * 0.15);
    }
    printf("O seu salario liquido e: %.2f", sal); // Exibindo na tela
    return 0;
}

