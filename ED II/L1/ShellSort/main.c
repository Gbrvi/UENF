#include <stdio.h>
#include <stdlib.h>
#include <time.h>

void shellSort(int *array, int size)
{
    int aux, h, j;

    h = 1;

    while(h < size/3) // Creating Max H
    {
        h = 3 * h +1;
    }

    while(h < size && h > 0){
        for(int i = h; i < size; i++)
        {
            aux = array[i];
            j = i;
            while( j>= h && aux < array[j - h])
            {
                array[j] = array[j - h];
                j = j - h;

            }
            array[j] = aux;
        }
    h = (h-1)/3;
    }
}

void fill_array(int *array, int size)
{
    srand(time(NULL));
    for(int i=0; i<size; i++)
    {
        array[i] = rand()%100;
    }
}

void print_array(int *array, int size)
{
    for(int i=0; i<size; i++)
    {
        printf("%d ", array[i]);
    }
}

int main()
{
    int *array, size;

    size = 50;

    array = malloc(sizeof(int) * size);

    fill_array(array, size);

    print_array(array, size);

    shellSort(array, size);

    printf("\nSorted Array \n");

    print_array(array, size);




}
