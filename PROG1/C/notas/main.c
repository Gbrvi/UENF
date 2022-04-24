#include <stdio.h>
#include <stdlib.h>

//Elabore um algoritmo, representando-o com um
//pseudocódigo e com um fluxograma, que com base no
//nome, em três notas e no número de faltas de um aluno
//qualquer determine qual a sua situação final: Aprovado,
//Reprovado por Falta ou Reprovado por Média. As notas
//mencionadas devem compor a média que para propiciar
//aprovação deve ter valor mínimo 7,0 e o limite de faltas é
//igual a 15. A reprovação por falta sobrepõe a reprovação
//por Média.

int main()
{
    char *nome;
    float n1, n2, n3, media;
    int faltas;

    printf("Nome: ");
    scanf("%s", &nome);
    printf("Primeira nota: ");
    scanf("%f", &n1);
    printf("Segunda nota: ");
    scanf("%f", &n2);
    printf("Terceira nota: ");
    scanf("%f", &n3);
    printf("Faltas: ");
    scanf("%d", &faltas);

    media = (n1 + n2 + n3) / 3;

    if (media >= 7 && faltas <= 15)
    {
        printf("Aprovado. Media: %.2f", media);
    }

    else if (media > 7 && faltas > 15)
    {
        printf("Reprovado por falta. Media: %.2f", media);
    }

    else if (media < 7 && faltas > 15)
    {
        printf("Reprovado por falta. Media: %.2f", media);
    }

    else if (media < 7 && faltas <= 15)
    {
        printf("Reprovado por media. Media: %.2f", media);
    }


    return 0;
}
