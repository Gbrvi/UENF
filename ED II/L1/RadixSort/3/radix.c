#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "radix.h"

int findMaxLength(char arr[][20], int n) {
    int max = strlen(arr[0]);
    for (int i = 1; i < n; i++) {
        int len = strlen(arr[i]);
        if (len > max) {
            max = len;
        }
    }
    return max;
}

void countingSort(char arr[][20], int n, int exp) {
    const int RANGE = 10;
    char output[n][20];
    int count[RANGE];
    for(int i=0; i<RANGE; i++) {
        count[i] = 0;
    }

    for (int i = 0; i < n; i++) {
        int len = strlen(arr[i]);
        int digit = (exp <= len) ? (arr[i][len - exp] - '0') : 0;
        count[digit]++;
    }

    for (int i = 1; i < RANGE; i++) {
        count[i] += count[i - 1];
    }

    for (int i = n - 1; i >= 0; i--) {
        int len = strlen(arr[i]);
        int digit = (exp <= len) ? (arr[i][len - exp] - '0') : 0;
        strcpy(output[count[digit] - 1], arr[i]);
        count[digit]--;
    }

    for (int i = 0; i < n; i++) {
        strcpy(arr[i], output[i]);
    }
}

void radixSort(char arr[][20], int n) {
    int maxLen = findMaxLength(arr, n);

    for (int exp = 1; exp <= maxLen; exp++) {
        countingSort(arr, n, exp);
        printf("\n-------------\n");
        for (int i = 0; i < n; i++) {
            printf("%s ", arr[i]);
        }
    }
}
