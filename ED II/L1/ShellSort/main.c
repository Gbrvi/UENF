#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "shellSort.h"
int main()
{
    int *array, size;

    size = 30;

    array = malloc(sizeof(int) * size);

    fill_array(array, size);

    print_array(array, size);

    shellSort(array, size);

    printf("\nSorted Array \n");

    print_array(array, size);




}
