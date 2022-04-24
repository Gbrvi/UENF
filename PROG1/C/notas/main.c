#include <stdio.h>
#include <stdlib.h>

//Elabore um algoritmo, representando-o com um
//pseudoc�digo e com um fluxograma, que com base no
//nome, em tr�s notas e no n�mero de faltas de um aluno
//qualquer determine qual a sua situa��o final: Aprovado,
//Reprovado por Falta ou Reprovado por M�dia. As notas
//mencionadas devem compor a m�dia que para propiciar
//aprova��o deve ter valor m�nimo 7,0 e o limite de faltas �
//igual a 15. A reprova��o por falta sobrep�e a reprova��o
//por M�dia.

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
