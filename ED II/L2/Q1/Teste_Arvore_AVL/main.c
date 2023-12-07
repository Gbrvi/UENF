#include <stdio.h>
#include <stdlib.h>
#include "ArvoreAVL.h"

int main()
{
   // Defini��es de vari�veis

    srand(time(NULL));
    for(int i=0; i<10000; i++) {
        vet[i] = rand()%200;
    }

	MinhaArvore = cria_ArvAVL();

        insere_ArvAVL(MinhaArvore, vet[i]);
	}
	printf("A altura da arvore e: %d\n",altura_ArvAVL(MinhaArvore));

	// Defini��es de vari�veis
	ArvBin* MinhaArvoreBin;
    int num2;
   // Cria a �rvore bin�ria de busca
	printf("Comeca o teste da arvore binaria de busca\n");

	MinhaArvoreBin = cria_ArvBin();

	for(int i=0; i<10000; i++) {
        insere_ArBin(MinhaArvoreBin, vet[i]);
	}

	printf("\n A arvore contem os seguintes elementos:\n");
	emOrdem_ArvBin(MinhaArvoreBin);
	printf("\n A arvore possui altura %d .\n", altura_ArvBin(MinhaArvoreBin));
	return 0;
}