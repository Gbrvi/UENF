#include <stdio.h>
#include <stdlib.h>
#include "ListaEncadeada.h"

int cmpData (void* pA, void*pB)
{

  if(pA < pB)
  {
      return -1;
  }

  else if(pA > pB)
  {
      return 1;
  }

  else
  {
      return 0;
  }
}


int main()
{
    printf("Hello world!\n");
    LIST *lista;
    int *getData;

    lista = createList(cmpData);

    addNode(lista, 11);
    addNode(lista, 8);
    addNode(lista, 14);
    addNode(lista, 25);
    addNode(lista, 2);
    addNode(lista, 35);

    removeNode(lista, 11, &getData); // Elemento removivel

    searchList(lista, 25, &getData); // Busca o elemento

    printf("%d \n", getData); // Vai mostrar o elemento buscado

    printList(lista);






}
