#include <stdio.h>
#include <stdlib.h>

//C program to check if three sides form a triangle or not

int check_triangle(float s1, float s2, float s3);

int main()
{
    float s1, s2, s3;

    printf("First side: ");
    scanf("%f", &s1);

    printf("Second side: ");
    scanf("%f", &s2);

    printf("Third side: ");
    scanf("%f", &s3);

    check_triangle(s1, s2, s3);

}

int check_triangle(float s1, float s2, float s3)
{
    if((s1 + s2) >= s3 && (s2 + s3) >= s1 && (s1 + s3) >= s2 )
    {
        if(s1 == s2 && s1 == s3)
        {
            printf("It's right triangle");
            return 0;
        }

        else if(s1 == s2 || s2 == s3 || s3 == s1)
        {
            printf("isosceles triangle! ");
            return 0;
        }

        else
        {
            printf("It's scalene! ");
            return 0;
        }
    }
    else
    {
        printf("Invalid! ");
        return 1;
    }
}
