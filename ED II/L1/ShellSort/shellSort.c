#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "shellSort.h"

void shellSort(int *array, int size)
{
    //
    int aux, h, j;
    // Initialize H as the minimum value
    h = 1;

    while(h < size/3) // Creating Max H
    {
        h = 3 * h +1;
    }

    while(h < size && h > 0){
            // It starts I = H, so, I always > 0
        for(int i = h; i < size; i++)
        {
            aux = array[i]; // Take array[i] as aux
            j = i;

            while( j>= h && aux < array[j - h])
            {
                array[j] = array[j - h]; // Move the elements of the array
                j = j - h;

            }
            // Put the value of aux in the correct position
            array[j] = aux;
        }
    h = (h-1)/3; // Decrease the value of H using knuth reverse sequence
    }
}

void fill_array(int *array, int size)
{
    srand(time(NULL));
    for(int i=0; i<size; i++)
    {
        array[i] = rand()%50; // Values between 0-50
    }
}

void print_array(int *array, int size)
{
    for(int i=0; i<size; i++)
    {
        printf("%d ", array[i]);
    }
}
