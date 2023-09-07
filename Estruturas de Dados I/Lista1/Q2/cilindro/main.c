#include <stdio.h>
#include <stdlib.h>
#include "cilindro.h"

int main()
{
// ------------------- Definindo variaveis ----------------------
    float a, a1, v, v1;

    Cilindro *ci;
    Cilindro *c2;

// -------------- Usando funções definidas no TAD --------------------

    ci = cria_cilindro(10, 10, 2);
    c2 = cria_cilindro(20, 14, 8);
    a = area(ci);
    a1 = area(c2);

    v = vol(ci);
    v1 = vol(c2);

// ------------Mostra area e volume ---------------
    printf("-----------Cilindro 1!----------\n");
    printf("\n AREA: %f m^2", a);
    printf("\n VOLUME: %f m^3", v);

    printf("\n\n-------modificando valores ---------\n");

//--------------Modifica e mostra nova area e volume-------------

    mudar_dados(ci, 6, 13.2, 11);

    a = area(ci);
    v = vol(ci);

    printf("\n AREA: %f m^2", a);
    printf("\n VOLUME: %f m^3", v);

    printf("\n\n-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=\n");

//-----------------Area e volume cilindro novo--------------------

    printf("\n-----------Cilindro 2----------\n");
    printf("\n AREA: %f m^2", a1);
    printf("\n VOLUME: %f m^3", v1);

// ----------------Modifica e mostra novos valores-----------------

    printf("\n\n-------MODIFICANDO VALORES ---------\n");

    mudar_dados(c2, 3, 13, 22);

    a1 = area(c2);
    v1 = vol(c2);

    printf("\n AREA: %f m^2", a1);
    printf("\n VOLUME: %f m^3", v1);


// ----------------- Libera memória ------------
    limpar(ci);
    limpar(c2);
}
