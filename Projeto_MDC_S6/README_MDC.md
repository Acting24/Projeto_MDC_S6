# Desafio Semana 6 - Sistemas Computacionais
## Cálculo do Maior Divisor Comum (MDC)

Este projeto implementa o algoritmo de Euclides para calcular o Maior Divisor Comum de dois números inteiros, tanto em linguagem C quanto em Assembly x86-64.

### Arquivos do Projeto

1. **mdc.c** - Implementação em linguagem C
2. **mdc_final.s** - Implementação em Assembly x86-64 (com problemas de execução no Windows)
3. **mdc.exe** - Executável compilado da versão C (funcionando)
4. **mdc_final.exe** - Executável tentativo do Assembly

### Algoritmo de Euclides

O algoritmo implementado segue a lógica:
```
mdc(a, b) = mdc(b, a % b) enquanto b ≠ 0
quando b = 0, o MDC é a
```

### Como Compilar

**Para a versão C:**
```bash
gcc -o mdc.exe mdc.c
```

**Para a versão Assembly:**
```bash
gcc -o mdc_final.exe mdc_final.s
```

### Como Executar

```bash
./mdc.exe
```

O programa solicita dois números inteiros e retorna o MDC.

### Exemplo de Execução

```
Digite o primeiro numero: 48
Digite o segundo numero: 18
O MDC de 48 e 18 eh: 6
```

### Análise dos Resultados

- **Versão C**: Funciona perfeitamente
- **Versão Assembly**: Compilou com sucesso, mas apresenta problemas de execução no ambiente Windows com MSYS2

### Observações

A versão em Assembly foi implementada seguindo:
- Sintaxe AT&T para compatibilidade com GCC
- Endereçamento RIP-relative para x86-64
- Convenção de chamada System V AMD64 ABI
- Uso das funções printf e scanf da biblioteca C

O código Assembly contém a implementação completa do algoritmo de Euclides com entrada e saída formatada, demonstrando o entendimento dos conceitos de programação em baixo nível.
