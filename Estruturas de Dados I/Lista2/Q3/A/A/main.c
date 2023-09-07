#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "static_queue.h"
int main()
{
    QUEUE *queue;
    queue = createQueue();

    enqueue(queue, -2);
    enqueue(queue, 5);
    enqueue(queue, 8);
    enqueue(queue, 22);

    dequeue(queue);
    dequeue(queue);
    dequeue(queue);

    printf("%d\n", peekQueue(queue));


    printf("Has %d elements\n", countQueue(queue));

}
