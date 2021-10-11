#include "square.c"
#include <math.h>

int max3(int a, int b, int c) {
    int max = a;
    if (b > max) max = b;
    if (c > max) max = c;
    return max;
}

int my_pow(int a, int b){
    int result = 1;
    for (int i = 0; i < b; i++) {
        result *= a;
    }
    return result;
}

int my_pow2(int a, int b) {
    return pow(a, b);
}

int main(void)
{
    int quatre = 4;
    int res = 0;

    // Checkpoint 0

    res = square(quatre);

    // Checkpoint 1

    res = square(res);

    // Checkpoint 2

    while(1);

    return res;
}

