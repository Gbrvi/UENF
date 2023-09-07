#include <stdio.h>
#include <stdlib.h>
typedef struct ST_DAD0S{
    char nome[40];
    float salario;

    struct nascimento{
    int ano;
    int mes;
    int dia;
    } st_nasc;
}st_dados;

int main(void)
{
    st_dados *person;

    person = (st_dados*)malloc(sizeof(st_dados));

    printf("\n Entre com o nome: ");
    scanf("%s", person->nome);

    printf("\n Digite salario: ");
    scanf("%f", &person->salario);

    printf("Entre com o nascimento: ");
    scanf("%d %d %d", &person->st_nasc.dia, &person->st_nasc.mes, &person->st_nasc.ano);

    printf("\n==========Dados digitados==========");
    printf("\nNome = %s ", person->nome);
    printf("\nSalario = %f ", person->salario);
    printf("\nNascimento = %d/%d/%d\n", person->st_nasc.dia, person->st_nasc.mes, person->st_nasc.ano);

    free(person);
    return 0;
}
