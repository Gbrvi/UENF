#include <stdio.h>
#include <stdlib.h>
#include <time.h>
void fill_array(int *array, int size)
{
    srand(time(NULL));

    for(int i=0; i < size; i++)
        array[i] = rand()%100;
}

void show_array(int *array, int size)
{
    for(int i=0; i < size; i++)
    {
        printf("%d ", array[i]);
    }
}


void selection_sort(int *array, int size)
{
    int min, temp;
    long cont, attr;
    cont = 0;
    attr = 0;

    for(int i=0; i<size; i++)
    {
        min = i;
        for(int j=i+1; j < size; j++)
        {   cont++;
            if(array[j] < array[min])
            {
                min = j;
            }
        }

        temp = array[i];
        array[i] = array[min];
        array[min] = temp;
        attr+= 3;

    }

    printf("\n Comp = %lli| attr = %lli \n", cont, attr);
}

void bubble_sort(int*array, int size){
    int temp;
    long cont, attr;
    cont = 0;
    attr = 0;

     for(int i=0; i < size; i++){
        for(int j=0; j < size-1-i; j++){
            if (array[j] >  array[j+1]){
                temp = array[j];
                array[j] = array[j+1];
                array[j+1] = temp;
                attr += 3;
            }
            cont++;
        }
    }
   printf("\n Comp = %lli| attr = %lli \n", cont, attr);
}

void insertion_sort(int *array, int size)
{
    int temp, j;
    long cont, attr;
    cont = 0;
    attr = 0;
    for(int i=1; i < size; i++)
    {
        j = i;
        temp = array[i];
        while(array[j-1] > temp && j > 0)
        {
            cont++;
            array[j] = array[j-1];
            j--;
            attr++;
        }

        array[j] = temp;
        attr++;
    }
    printf("\n Comp = %lli| attr = %lli \n", cont, attr);

}


int main()
{
    int *array, size;

 //   printf("Tamanho do vetor: ");
 //   scanf("%d", &size);

   size = 50000;

    array = (int*)malloc(sizeof(int)*size);

    if(array == NULL)
    {
        printf("ERROR: Poblema na alocação de memória");
        exit(1);
    }

    fill_array(array, size);

  //  show_array(array, size);

  //  insertion_sort(array, size);

   //bubble_sort(array, size);

    selection_sort(array, size);

    printf("\n");

  // show_array(array, size);


    free(array);


    // BUBBLE SORT
    // --------------
    // 50.000 -> 9.921s
    // comp - > 1249975000
    // attr -> 1848370296
    // ---------------------

    // SELECTION SORT
    // 50.000 -> 2.702s
    // comp = 1249975000
    // attr = 150000

    // insertion_sort
    // 50.000 -> 1.634s
    // comp ->  619475758
    // attr -> 619525757
    }
