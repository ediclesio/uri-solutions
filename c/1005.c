
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1005

#include <stdio.h>
#include <stdlib.h>

int main()
{
    double a, b, media;

    scanf("%lf %lf", &a, &b);

    if ((a >= 0.0) && (a <= 10.0) && (b >= 0.0) && (b <= 10.0)){
        media = ((a * 3.5) + (b * 7.5)) / 11;

        printf("MEDIA = %.5lf\n", media);
    }

    return 0;
}
