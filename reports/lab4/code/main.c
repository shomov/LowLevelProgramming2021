#include "shiftArr.h"

int main( )
{
    int shift = 2;
    int a[] = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
    int length = sizeof(a) / sizeof(int);
    shiftArr(shift, length, a);
    return 0;
}
