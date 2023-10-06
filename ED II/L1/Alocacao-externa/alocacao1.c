
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "alocacao.h"

#define N 50 // N the max size of the arrays

// Struct to manage buffers
typedef struct file{
    FILE *f;
    int pos, MAX, *buffer;
}stFile;

// Functions to campare values
int compare(const void *a, const void *b)
{
    if(*(int*)a == *(int*)b)
        return 0; // Same
    if(*(int*)a < *(int*)b)
        return -1; //lower
    else
        return 1; //bigger
}

void CreateFile(char *name)
{
    FILE *f = fopen(name, "w");
    srand(time(NULL));
    for(int i=0; i < 500; i++) // Create 500 random values in 'name'.txt
    {
        fprintf(f, "%d\n", rand()%200);
    }
    fprintf(f, "%d", rand()%200);
    fclose(f);
}

void mergeSortExterno(char *name)
{
    char novo[20]; //
    int numFiles = CreateSortFiles(name); // Return how many files were created
    int K = (N / numFiles + 1); // Buffer has K size

    remove(name);
    merge(name, numFiles, K); // Sort the original file the amount of numFiles with K size

}

int CreateSortFiles(char *name)
{
    int array[N], count = 0, total = 0; // Array size N elements
    char novo_file[20];
    FILE *f = fopen(name, "r");
    while(!feof(f)){ // While not close file
        fscanf(f, "%d", &array[total]); // Get a value
        total++;
        if(total == N) // The array is full. SAVE THE FILE
        {
            count++;
            sprintf(novo_file, "Temp%d.txt", count); // Create temp files
            qsort(array, total, sizeof(int), compare); // Sort the full array
            SaveFile(novo_file, array, total, 0); //Save the file
            total = 0; // Restart the total
        }
    }

    if (total > 0) // If remains a value in the array then SAVE THE FILE
    {
        count++;
        sprintf(novo_file, "Temp%d.txt", count); // Make temp values
        qsort(array, total, sizeof(int), compare);
        SaveFile(novo_file, array, total, 0);
    }
    fclose(f);
    return count; // How many files I created
}

void SaveFile(char *name, int *array, int size, int FlagBreakLine)
{
    FILE *F = fopen(name, "a");
    // Save to the file the values
    for(int i=0; i< size-1; i++)
    {
        fprintf(F, "%d\n", array[i]);
    }

    if(FlagBreakLine == 0)
    {
        fprintf(F, "%d", array[size-1]);
    }
    else
    {
        fprintf(F, "%d\n", array[size-1]);

    }

    fclose(F);
}


void merge(char *name, int numFiles, int K)
{
    char novo[20];
    int *buffer = (int*)malloc(sizeof(int) * K); // Exit buffer

    stFile* file;
    file = (stFile*)malloc(numFiles*sizeof(stFile));

    // For each sort file
    for(int i=0; i<numFiles; i++)
    {
        sprintf(novo, "Temp%d.txt", i+1);
        file[i].f = fopen(novo, "r");
        file[i].MAX = 0;
        file[i].pos = 0;
        file[i].buffer = (int*)malloc(K*sizeof(int));
        fillBuffer(&file[i], K); // Fill the buffer
    }

    // Now all buffers are full, so I need to find the lower

    int lower, bufferQty = 0;
    while(findLower(file, numFiles, K, &lower) == 1)
    {
        buffer[bufferQty] = lower;
        bufferQty++;
        if(bufferQty == K) // Buffer is full
        {
            SaveFile(name, buffer, bufferQty, 1); // Save file
            bufferQty = 0; // Start to zero again
        }
    }
    // If remains some data..
    if(bufferQty != 0)
    {
        SaveFile(name, buffer, bufferQty, 1);
    }

    for(int i=0; i<numFiles; i++)
    {
        free(file[i].buffer);
    }
    free(file);
    free(buffer);

}


int findLower(stFile* file, int numFiles, int K, int* lower)
{
    int index = -1; // Initialize index with -1.

    // Try to find a lower element.
    for (int i = 0; i < numFiles; i++)
    {
        if (file[i].pos < file[i].MAX)
        {
            if (index == -1)
            {
                index = i; //
            }
            else
            {
                if (file[i].buffer[file[i].pos] < file[index].buffer[file[index].pos])
                {
                    index = i;
                }
            }
        }
    }
    if(index != -1)
    {
        *lower = file[index].buffer[file[index].pos];
        file[index].pos++;
        if(file[index].pos == file[index].MAX) // So it's the end of the array
            fillBuffer(&file[index], K); // Fill buffer again because it's empty
        return 1;
    }

    else{
        return 0;
    }
}

void fillBuffer(stFile *file, int K){
    int i;
    if(file->f == NULL) // Check it it's opened or not
        return;

    file->pos = 0;
    file->MAX = 0;
    for(i=0; i<K; i++){
        if(!feof(file->f)){ //If has elements so put it on the buffer
            fscanf(file->f,"%d",&file->buffer[file->MAX]);
            file->MAX++;
        }else{ // There are no more eements. Close FILE
            fclose(file->f);
            file->f = NULL;
            break;
        }
    }
}

void checkOrderedFile(char *filename) {
    int value1, value2, error = 0;
    FILE *file = fopen(filename, "r"); // Open file
    fscanf(file, "%d", &value1);
    while (!feof(file)) {
        fscanf(file, "%d", &value2); // Get the value
        if (value2 < value1) { // Compare if it's lower or higher
            error = 1;
            break;
        }
    }
    fclose(file); // Close file
    if (error)
        printf("Values out of order!\n");
    else
        printf("File correctly ordered!\n");
}

