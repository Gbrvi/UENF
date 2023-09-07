#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "static_stack.h"

int main(void)
{
    STACK *stack;
    int a;

    stack = createStack();

    emptyStack(stack);

    pushStack(stack, 15);
    pushStack(stack, 46);
    pushStack(stack, 12);
    pushStack(stack, 8);

    emptyStack(stack);

   while(!emptyStack(stack))
   {
       printf("%d ",popStack(stack));
   }

   destroyStack(stack);
}
