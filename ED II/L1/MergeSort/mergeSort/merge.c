#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "merge.h"

void merge(int *V, int inicio, int meio, int fim)
{
    int *temp, left_pt, right_pt, tamanho, i, j, k;
    int left_end = 0, right_end=0;
    tamanho = fim-inicio+1;
    left_pt = inicio;
    right_pt = meio+1;
    temp = (int *)malloc(tamanho*sizeof(int));
    if(temp != NULL) // Se temp nao for nulo
    {
        for(i=0; i < tamanho; i++) // Um for de 0 ate tamanho (fim-inicio+1)
        {
            if(!left_end && !right_end) // Enquanto 'pilha' forem falsos
            {
                if(V[left_pt] < V[right_pt]) // Se o valor da pilha esquerda > que pilha direita..
                {
                    temp[i] = V[left_pt++]; // Adicione-o no vetor temporario
                }
                else //Se for falso,
                {
                    temp[i] = V[right_pt++]; // adicione o valor da direita
                }
                if(left_pt>meio) left_end=1; // Se indice da esquerda quer dizer que chegou ao final (ao meio)
                if(right_pt>fim) right_end=1; // Se indice da direita for > fim quer dizer que chegou ao final doa array.

            }
            else{ // Se left_end ou right_end nao forem verdadeiros...
                if(!left_end) // Se verifica se left_end é falso, se for, continue adicionando ao temp
                    temp[i] = V[left_pt++];
                else
                    temp[i] = V[right_pt++];  // Se verifica se right_end é falso, se for, continue adicionando ao temp
            }
        }

        for(j = 0, k = inicio; j < tamanho; j++, k++) // Preenche o vetor original com os elementos ordenados
            V[k] = temp[j];
    }
    free(temp);
}

void mergeSort(int *V, int inicio, int fim) // 0 e 19
{
    int meio;
    if (inicio < fim)
    {
        meio = floor((inicio+fim)/2); // Calcula o meio do indice // 9
        mergeSort(V,inicio, meio); // Ordenada do inicio ao meio
        mergeSort(V,meio+1,fim); // Ordena do meio para o fim
        merge(V,inicio,meio,fim); // Ordena tudo
    }

}

//Preenche array com valores aleatorios
void fill_array(int *V, int size)
{
    for(int i=0; i < size; i++)
    {
        V[i] = rand()%100;
    }
}

//Funcao para mostrar array
void show_array(int *V, int size)
{
    for(int i=0; i < size; i++)
    {
        printf("%d ", V[i]);
    }
}
