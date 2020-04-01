
// https://www.urionlinejudge.com.br/judge/pt/problems/view/1006

#include <stdio.h>
#include <stdlib.h>

int main()
{
    double a, b, c, media;

    scanf("%lf %lf %lf", &a, &b, &c);

    if ((a >= 0.0) && (a <= 10.0) && (b >= 0.0) && (b <= 10.0) && (c >= 0.0) && (c <= 10.0)){
        media = ((a * 2) + (b * 3) + (c * 5)) / 10;

        printf("MEDIA = %.1lf\n", media);
    }

    return 0;
}
