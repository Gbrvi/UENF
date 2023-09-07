#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "cilindro.h"

// Estrutura do cilindro
struct cilindro{
    float pos;
    float raio;
    float altura;
};

Cilindro* cria_cilindro(float pos, float raio, float altura)
{
    Cilindro* c = (Cilindro*)malloc(sizeof(Cilindro)); // Reserva espaço na memoria

    if(c == NULL)
    {
        printf("\nERROR: problema na alocacao de memoria");
        exit(1);
    }

    c->pos = pos;
    c->raio = raio;
    c->altura = altura;

    return c;
}

void mudar_dados(Cilindro* c, float pos, float raio, float altura)
{
    if(c == NULL) // Verifica se está nulo
    {
        printf("\nERROR: problema na alocacao de memoria");
        exit(1);
    }

    // Muda dados do cilindro

    c->pos = pos;
    c->raio = raio;
    c->altura = altura;
}

double area(Cilindro *c)
{
    if(c == NULL) // Verifica se está nulo
    {
        printf("\nERROR: problema na alocacao de memoria...");
        exit(1);
    }

     return 2*3.14*c->raio * (c->raio + c->altura) ; // Calculo da áreae
}

double vol(Cilindro *c)
{
    if(c == NULL) // verifica se está nulo
    {
        printf("\nERROR: Problema na alocacao de memoria");
        exit(1);
    }

    return c->raio*c->raio*M_PI*c->altura; // Cálculo do volume
}

void limpar(Cilindro *c)
{
    free(c); // Libera espaço na memoria
}



