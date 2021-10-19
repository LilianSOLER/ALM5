#include <stdio.h>
#define TAILLE 5

int t[TAILLE] ;
int resfin;

int main()
{
    t[0]=1; t[1]=20; t[2]=30; t[3]=40; t[4]=50;
    
    printf("1er element %d\n",t[0]);
    printf("Adresse du 1er element via &t[0] %d\n",(int)&t[0]);
    printf("Adresse du 1er element via t %d\n",(int)t);
    printf("1er element %d\n",*t);
    printf("2eme element %d\n",t[1]);
    printf("Adresse du 2eme element %d\n",(int)t+4);
    printf("2eme element %d\n",*((char*)t+4));
    //printf("2eme element %d\n", *(t+1));
    //printf("2eme element %d\n",*(t+4));
}

