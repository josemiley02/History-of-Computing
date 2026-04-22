/* Programa en C – Cuenta valores mayores que la media */
#include <stdio.h>

int main() {
    int intlist[99], listlen, counter, sum = 0, average, result = 0;
    
    scanf("%d", &listlen);
    if ((listlen > 0) && (listlen < 100)) {
        /* Lectura y suma */
        for (counter = 0; counter < listlen; counter++) {
            scanf("%d", &intlist[counter]);
            sum += intlist[counter];
        }
        average = sum / listlen;
        /* Conteo de valores mayores que la media */
        for (counter = 0; counter < listlen; counter++)
            if (intlist[counter] > average) result++;
        printf("Número de valores > media: %d\n", result);
    } else {
        printf("Error – longitud no válida\n");
    }
    return 0;
}
