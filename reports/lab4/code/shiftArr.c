#include "shiftArr.h"


int shiftArr(int shift, int length, int *a)
{

    while (shift >= length){
        shift -= length;
    }
    int tmp;
    int tmp2;
    int temp;
    int num;
    while (shift > 0) {
        temp = a[length - 1];
        num = 0;
        tmp = a[num];
        while (num < length) {
            tmp2 = a[num+1];
            a[num+1] = tmp;
            tmp = tmp2;
            num++;
        }
        a[0] = temp;
        shift--;
    }
    return 0;
}