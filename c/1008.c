
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1008

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int fun, horas;
    double pag;

    scanf("%d %d %lf", &fun, &horas, &pag);

    printf("NUMBER = %d\n", fun);
    printf("SALARY = U$ %.2lf\n", pag * horas);

    return 0;
}