
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1009

#include <stdio.h>
#include <stdlib.h>

int main()
{
    char nome[20];
    double salario, vendas;

    scanf("%s %lf %lf", &nome, &salario, &vendas);

    printf("TOTAL = R$ %.2lf\n", salario + (vendas * 0.15));

    return 0;
}
