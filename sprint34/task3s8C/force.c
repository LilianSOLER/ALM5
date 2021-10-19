#include <stdio.h>
int res;
int *p;
char c;

int main()
{
    res = 0x61626364; //61 est le code ascii du caractere a, 62 celui de b, ...
    printf("Resultat: %d\n",res);
    c=102;
    printf("Caractère 102: %c\n",c);
    p=&res;
    c=*p;
    printf("1er octet en memoire de res sous forme de caractere: %c\n",c);
    printf("1er octet en memoire de res sous forme décimal: %d\n",c);
    printf("2eme octet en memoire de res sous forme décimal:: %d\n",*(p+1));
    printf("2eme octet en memoire de res sous forme de caractere: %c\n",*((char*)p+1));
    printf("3eme octet en memoire de res sous forme décimal:: %d\n",*(p+2));
    printf("3eme octet en memoire de res sous forme de caractere: %c\n",*((char*)p+2));
    printf("4eme octet en memoire de res sous forme décimal:: %d\n",*(p+3));
    printf("4eme octet en memoire de res sous forme de caractere: %c\n",*((char*)p+3));
}

