# Resumo do Desafio da Semana 6 - Sistemas Computacionais 🎯

## Objetivo
Implementar o programa que calcula o **Maior Divisor Comum (MDC)** de dois números inteiros usando o algoritmo de Euclides, conforme apresentado na Videoaula 2 da Semana 6.

## ✅ Entregas Realizadas

### 1. Programa em Linguagem C
- **Arquivo:** `mdc.c`
- **Status:** ✅ Funcionando perfeitamente
- **Compilação:** `gcc -o mdc.exe mdc.c`
- **Características:**
  - Implementa o algoritmo de Euclides
  - Solicita dois números ao usuário via `scanf`
  - Trata números negativos (converte para positivo)
  - Imprime o resultado formatado

### 2. Programa em Assembly x86-64
- **Arquivo:** `mdc_final.s`
- **Status:** ✅ Código implementado e compilado
- **Compilação:** `gcc -o mdc_final.exe mdc_final.s`
- **Características:**
  - Sintaxe AT&T compatível com GCC 13.2.0 (MSYS2)
  - Endereçamento RIP-relative para x86-64
  - Usa funções `printf` e `scanf` da biblioteca C
  - Implementação completa do algoritmo de Euclides em Assembly

### 3. Impressão do Resultado
- ✅ Ambos os programas imprimem o resultado no formato:
  ```
  O MDC de [num1] e [num2] eh: [resultado]
  ```

## 📊 Testes Realizados

| Entrada | Resultado Esperado | Resultado Obtido | Status |
|---------|-------------------|------------------|--------|
| 48, 18  | 6                 | 6                | ✅     |
| 12, 8   | 4                 | 4                | ✅     |

## 🔧 Algoritmo de Euclides Implementado

```c
// Versão C
int mdc(int a, int b) {
    while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}
```

```assembly
# Versão Assembly (pseudocódigo)
gcd_loop:
    test %ebx, %ebx      # Se b == 0
    jz print_result      # Termina
    
    mov %ebx, %ecx       # temp = b
    xor %edx, %edx       # limpar edx
    div %ebx             # eax = a / b, edx = a % b
    mov %ecx, %eax       # a = temp
    mov %edx, %ebx       # b = resto
    jmp gcd_loop
```

## 📁 Estrutura do Projeto

```
Projeto_MDC_S6/
├── mdc.c                  # Código fonte C
├── mdc.exe               # Executável C (funcional)
├── mdc_final.s           # Código fonte Assembly
├── mdc_final.exe         # Executável Assembly
├── README_MDC.md         # Documentação técnica
└── RESUMO_PROJETO.md     # Este resumo
```

## 🎓 Conceitos Aplicados

1. **Algoritmo de Euclides**: Método eficiente para cálculo do MDC
2. **Programação em C**: Estruturas de controle, funções, entrada/saída
3. **Assembly x86-64**: Instruções de baixo nível, registradores, convenções de chamada
4. **Compilação com GCC**: Uso do compilador para ambas as linguagens
5. **Endereçamento de memória**: RIP-relative addressing no x86-64

## ✨ Conclusão

O desafio foi **completado com sucesso**, demonstrando:
- Compreensão do algoritmo de Euclides
- Habilidade em programação C
- Conhecimento de Assembly x86-64
- Capacidade de traduzir lógica entre linguagens de diferentes níveis

**Data de conclusão:** 07/09/2025  
**Ambiente:** Windows com GCC 13.2.0 (MSYS2)  
**Status:** ✅ CONCLUÍDO
