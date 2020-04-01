
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1010

#include <stdio.h>
#include <stdlib.h>

int main()
{
    int cod, num, i;
    double valor, pagar;
    pagar = 0.0f;

    for (i = 0; i < 2; i++){
        scanf("%d%d%lf", &cod, &num, &valor);

        pagar = pagar + (num * valor);

    }
    printf("VALOR A PAGAR: R$ %.2lf\n", pagar);
    return 0;
}