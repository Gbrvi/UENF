#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "vet2.h"

typedef struct vet {
    int data;
    int pri;
} vetor;

void criaHeap(vetor *vet, int pai, int fim) {
    int aux = vet[pai].pri;
    int aux2 = vet[pai].data;
    int filho = 2 * pai + 1;

    while (filho <= fim) {
        if (filho < fim) {
            if (vet[filho].pri < vet[filho + 1].pri) {
                filho++;
            }
        }
        if (aux > vet[filho].pri) {
            vet[pai].data = vet[filho].data;
            vet[pai].pri = vet[filho].pri;
            pai = filho;
            filho = 2 * pai + 1;
        } else {
            filho = fim + 1;
        }
    }
    vet[pai].pri = aux;
    vet[pai].data = aux2;
}

void heapSort(vetor *vet, int N) {
    int i;
    int aux;
    for (i = (N - 1) / 2; i >= 0; i--) {
        criaHeap(vet, i, N - 1);
    }
    for (i = N - 1; i >= 1; i--) {
        aux = vet[0].data;
        vet[0].data = vet[i].data;
        vet[i].data = aux;
        aux = vet[0].pri;
        vet[0].pri = vet[i].pri;
        vet[i].pri = aux;
        criaHeap(vet, 0, i - 1);
    }
}

void GeraVal(vetor *vet, int N) {
	int cont = 0;
	for(int i=0; i<N; i++) {
		cont++;
		printf("\nValor: ");
		scanf("%d", &vet[i].data);
		printf("\nPrioridade: ");
		scanf("%d", &vet[i].pri);
		vet[i].pri *= 1000;
		vet[i].pri = vet[i].pri + (1000 - 100*cont);
	}
}

void MostraHeap(vetor *vet, int n) {
    for (int i = 0; i < n; i++) {
        printf("[%d] pri: [%d]\n", vet[i].data, vet[i].pri);
    }
}
