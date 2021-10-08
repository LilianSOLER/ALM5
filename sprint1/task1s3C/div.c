/************************************************************
  Division de a par b, le quotient est dans res, le reste dans a */
#include <stdio.h>
#include <stdlib.h>

int main ()
{
    int a, b, res;

    a=15;
    b=4;

   /* A COMPLETER */

    while(a>=b){
      a -= b;
      res += 1;
    }
    //printf("The remainder is %d \n The division is %d", a, res);
}

