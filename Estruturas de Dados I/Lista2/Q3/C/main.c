#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "fila.h"

int main()
{
    QUEUE *queue;
    float *item;
    bool done = false;
    float *elemento;


    queue = createQueue();

    printf("Is the queue empty? %s\n", emptyQueue(queue)? "true" : "false");


    while(!done)
    {
        printf("Type a number [-1 to end]: ");
        item = (float*)malloc(sizeof(float));
        scanf("%f", item);
        if(*item != -1)
        {
           enqueue(queue, item);
        }
        else{
            done = true;
        }

    }

    printf("Is the queue empty? %s\n", emptyQueue(queue)? "true" : "false");

    printf("There's %d\n elements in the queue", queueCount(queue));

    while(!emptyQueue(queue))
    {
        dequeue(queue, &elemento);
        printf(" %.2f ", *elemento);
    }



}
