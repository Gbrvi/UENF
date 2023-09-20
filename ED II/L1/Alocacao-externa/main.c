#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "alocacao.h"

int main()
{
    CreateFile("data.txt");
    mergeSortExterno("data.txt");
    checkOrderedFile("data.txt");
}
