#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "quick.h"

int main()
{
    int* array;
    int size = 10;
    array = malloc(sizeof(int)*size);

    fill_array(array, size);

    printf("\n-=-==-=-=-=-=-=-=-ANTES-=-==-=-=-=-=-=-=-\n");
    print_array(array, size);

    printf("\n-=-==-=-=-=-=-=-=-DEPOIS-=-==-=-=-=-=-=-=-\n");

    quickSort(array, 0, size-1);

    print_array(array, size);
}




