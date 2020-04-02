
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1011

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main()
{
    double volume, pi, r;
    pi = 3.14159;

    scanf("%lf", &r);
    volume = (4.0/3) * pi * pow(r,3);

    printf("VOLUME = %.3lf\n", volume);

    return 0;
}