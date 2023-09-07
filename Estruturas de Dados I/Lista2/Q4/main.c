#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include "fila.h"
#include <string.h>
#define MAX 26 // As 26 letras do alfabeto

int main()
{
    char line[500]; // Tamanho linha
    char fileID[500]; // Tamanho do arquivo
    char *firstLetter; // Ponteiro para pegar primeira letra
    char *data; // char de data
    int queue_index; // Indice da filla
    FILE* fpIn; // Define fpIn como FILE
    QUEUE *queue[MAX]; // Cria um vetor QUEUE de 26 tamaho (as 26 letras do alfabeto)

    printf("Type file ID: ");
    scanf("%s", fileID); // Pega o arquivo

    fpIn = fopen(fileID, "r");
    if(!fpIn)
    {
       printf("Can't find the %s", fileID);
       exit(-1);
    }

   for(int i=0; i < MAX; i++) // Cria 26 vetores do tipo QUEUE para cada letra do alfabeto
   {
        firstLetter = i + 'a';  //
        queue[i] = createQueue(&firstLetter);
   }

   // Ler arquivo
    while (fgets(line, sizeof(line), fpIn) != NULL) {
        char* getWord = strtok(line, " "); // Pega cada palavra separada por espaços
        while (getWord != NULL) { // Se nao for nula

            queue_index = findIndex(&getWord[0]); // Encontra o indice correto para armazenar a fila certa

            if(queue_index != -1) // Se queue index estive no intervalo entre A e Z
            {
                enqueue(queue[queue_index], &getWord); // Enfileira a palavra na fila correta
            }

            getWord = strtok(NULL, " "); // Aponta para proxima palavra
        }
    }

    fclose(fpIn); // Fecha arquivo


    for(int i=0; i<MAX; i++) // Exibe todas as filas
    {
        printf("FILA %C: ", i + 'a');
        showQueue(queue[i]);
    }

}



