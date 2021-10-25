int ping(int p1);
int pong(int p1);
int psomme(int p1, int p2, int p3, int p4, int p5,int p6);

int ping(int p1)
{
    return pong(p1 + 42);
}

int pong(int p1)
{
    int a = p1 + 42;
    int b = a * 3;

    return ping(a + b);
}

int psomme(int p1, int p2, int p3, int p4, int p5,int p6){
    return 1*p1+2*p2+3*p3+4*p4+5*p5+6*p6;
}

int main(void)
{
    return psomme(1,2,3,4,5,6);
}

