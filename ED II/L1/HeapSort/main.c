#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "heap.h"

int main() {
int* array;
    int size = 30;
    array = malloc(sizeof(int)*size);

    fill_array(array, size);

    printf("\n-=-==-=-=-=-=-=-=-ANTES-=-==-=-=-=-=-=-=-\n");
    print_array(array, size);

    printf("\n-=-==-=-=-=-=-=-=-DEPOIS-=-==-=-=-=-=-=-=-\n");

    heapSort(array, size);

    print_array(array, size);

    return 0;
}
