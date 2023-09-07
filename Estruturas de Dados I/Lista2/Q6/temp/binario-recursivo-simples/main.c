#include <stdio.h>
#include <stdlib.h>

void binario(int decimal) {
    if (decimal > 0) {
        binario(decimal / 2);
        printf("%d", decimal % 2);
    }
}
int main()
{
    printf("Hello world!\n");

    binario(125);

    return 0;
}
