#include <stdio.h>
#include <stdlib.h>
#include <math.h>

//A program to calculate the square root of 1-100 numbers.

int square_root(int n)
{   // Calculate the square root
    for(float i=0; i <= n; i++)
    {
        printf("The square root %.1f is %.3f\n", i, sqrt(i));
    }
    return 0;
}
// Main function
int main()
{
    int n = 100;
    square_root(n);
    return 0;
}

