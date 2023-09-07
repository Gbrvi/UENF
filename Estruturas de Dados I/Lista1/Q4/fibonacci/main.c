#include <stdio.h>
#include <stdlib.h>

int main()
{
    int a, b, pos, resp;

    a = 0;
    b = 1;

    pos = 10;


    for(int i=0; i<pos-1; i++)
    {

        printf("%d ", a);
        resp = a + b;
        a = b;
        b = resp;


    }


// 10 -- 0.010s
// 20 -- 0.011s
// 30 -- 0.011s
// 40 -- 0.011s
// 50 -- 0.012s
// 100 --0.010s
}
