#include <stdio.h>
#include "prelab6.h"

int DoubleIncrement(void)
{
    CountPlusPlus();
    return CountPlusPlus();
}

int main(void)
{
    // By ones
    for (int i=0;i<10;i++)
    {
        printf("Count should be %d, and is %d\n",i+1,CountPlusPlus());
    }

    // By twos
    for (int i=0;i<10;i++)
    {
        printf("Count should be %d, and is %d\n",10+(i+1)*2,DoubleIncrement());
    }

}

