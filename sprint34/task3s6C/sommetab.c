#include <stdio.h>
#define TAILLE 5

//retourne la somme des elements du tableau tab
int somme(int tab[])
{
    //A completer
    int sum = 0;
    for (int i = 0; i < TAILLE; i++)
    {
        sum += tab[i];
    }
    return sum;
}

int main()
{
    int t[TAILLE] = {10, 9, 77, 40, 1};
    int res;

    res= somme(t);
    printf("Resultat:%d\n",res);
}

