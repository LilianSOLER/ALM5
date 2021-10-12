#include <stdio.h>

int a;
int b;
int* pointeur;

int main()
{
    pointeur= &a;
    a=10;
    b=*pointeur;
    
    
    printf("Valeur de a: %d\n",a);
    printf("Valeur de b: %d\n",b);
    printf("Valeur de l'adresse de a: %d\n",&a);
    printf("Valeur du pointeur sur a: %d\n",pointeur);
    printf("Valeur de l'adresse du pointeur p: %d\n",&pointeur);
    
    *pointeur=7;
    printf("Nouvelle valeur de a: %d\n",a);

}

