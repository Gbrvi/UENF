#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "quick.h"

void fill_array(int *array, int size)
{
    srand(time(NULL));
    for(int i=0; i < size; i++)
    {
        array[i] = rand()%400;
    }
}


void print_array(int *array, int size)
{
    for(int i=0; i< size; i++)
    {
        printf("%d ", array[i]);
    }
}

int particiona(int *array, int inicio, int fim)
{
    int esq, dir, pivo, aux;
    esq = inicio;
    dir = fim;
    pivo = array[inicio];
    while(esq < dir)
    {
        while(array[esq] <= pivo)
        {
            esq++;
        }

        while(array[dir] > pivo)
        {
            dir--;
        }

        if(esq < dir)
        {
            aux = array[esq];
            array[esq] = array[dir];
            array[dir] = aux;
        }
    }

    array[inicio] =  array[dir];
    array[dir] = pivo;
    return dir;
}


void quickSort(int *array, int inicio, int fim)
{
    int pivo;
    if(fim > inicio)
    {
        pivo = particiona(array, inicio, fim);
        quickSort(array, inicio, pivo-1);
        quickSort(array, pivo+1, fim);
    }
}


