#include <stdio.h>
#include <stdlib.h>
#include "ArvoreAVL.h"

int main()
{
   // Defini��es de vari�veis	ArvAVL* MinhaArvore;    int num, vet[10000];

    srand(time(NULL));
    for(int i=0; i<10000; i++) {
        vet[i] = rand()%200;
    }
   // Cria a �rvore bin�ria de busca	printf("Comeca o teste da Arvore AVL\n");
	MinhaArvore = cria_ArvAVL();
    // Ingressa dados na �rvore bin�ria de busca	for(int i=0; i<10000; i++) {
        insere_ArvAVL(MinhaArvore, vet[i]);
	}	printf("\n A arvore contem os seguintes elementos:\n");	emOrdem_ArvAVL(MinhaArvore);
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
