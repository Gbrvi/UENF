#include <stdio.h>
#include <stdlib.h>

long fibo(int n)
{
    if(n==0)
    {
        return 0;
    }

    if(n==1)
    {
        return 1;
    }

    return fibo(n-1) + fibo(n-2);
}

int main()
{
    fibo(100);

//    printf("%d ", resp);
}

// 10 -- 0.012s
// 20 -- 0.013s
// 30 -- 0.0.14s
// 40 -- 0.830s
// 50 --  152.274 s
// 100 -- Impossível saber.

