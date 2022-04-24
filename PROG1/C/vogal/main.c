#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
    char letra;
    int tam;

    printf("Digite uma letra: ");
    scanf("%c", &letra);

    if (letra == 'a' || letra =='e' || letra =='i' || letra =='o' || letra =='u')
    {
        printf("E uma vogal");
    }
    else
    {
        printf("E consoante");
    }
}
