#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "listInt.h"

// Função de comparação para ordenação da lista (exemplo)
int compareInt(int* argu1, int* argu2) {
    if (*argu1 < *argu2)
        return -1;
    else if (*argu1 > *argu2)
        return 1;
    else
        return 0;
}

int main() {
    LIST* myList = createList(compareInt);

    int value1 = -5;
    int value2 = 10;
    int value3 = 50;
    int value4 = 1;
    int value5 = 11;

    int *getData;

    getData = (int*)(malloc(sizeof(int)));

    addNode(myList, &value1);
    addNode(myList, &value2);
    addNode(myList, &value3);
    addNode(myList, &value4);

    printList(myList);

    removeNode(myList, &value4, &getData);

    printf("Removendo o elemento %d da lista! \n", *getData);

    printList(myList);

    return 0;
}
