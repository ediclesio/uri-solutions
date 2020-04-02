
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1002

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    double r, pi, a;
    pi = 3.14159;

    scanf("%lf", &r);

    a = pi * pow(r,2);

    printf("A=%.4lf\n", a);

    return 0;
}