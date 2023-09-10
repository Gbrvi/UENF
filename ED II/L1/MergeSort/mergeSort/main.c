#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#include "merge.h"


int main()
{
    int *array;
    int size = 50;

    array = (int*) malloc(sizeof(int)*size); // alocando memoria para o array

    fill_array(array, size); // Preenchendo vetor

    printf("\n Antes de ordernar\n"); // Exibir antes de odernar
    show_array(array, size);

    mergeSort(array, 0, size-1);

    printf("\nDepois de ordernar\n");
    show_array(array, size);


}
