#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "radix.c"

int main() {
    char arr[][20] = {"170", "45", "75", "90", "802", "24", "2", "66"};
    int n = sizeof(arr) / sizeof(arr[0]);

    printf("Array original: \n");
    for (int i = 0; i < n; i++) {
        printf("%s ", arr[i]);
    }

    radixSort(arr, n);

    printf("\nArray ordenado: \n");
    for (int i = 0; i < n; i++) {
        printf("%s ", arr[i]);
    }

    return 0;
}
