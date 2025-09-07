#include <stdio.h>

// Função para calcular o MDC usando o algoritmo de Euclides
int mdc(int a, int b) {
    while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

int main() {
    int num1, num2, resultado;
    
    printf("Digite o primeiro numero: ");
    scanf("%d", &num1);
    
    printf("Digite o segundo numero: ");
    scanf("%d", &num2);
    
    // Garantir que os números sejam positivos
    if (num1 < 0) num1 = -num1;
    if (num2 < 0) num2 = -num2;
    
    resultado = mdc(num1, num2);
    
    printf("O MDC de %d e %d eh: %d\n", num1, num2, resultado);
    
    return 0;
}
