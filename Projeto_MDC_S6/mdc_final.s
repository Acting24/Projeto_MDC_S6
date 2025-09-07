.text
.globl main
.extern printf
.extern scanf

main:
    pushq %rbp
    movq %rsp, %rbp
    subq $32, %rsp

    # Ler primeiro número
    leaq input_msg1(%rip), %rdi
    xorq %rax, %rax
    call printf
    
    leaq scanf_fmt(%rip), %rdi
    leaq num1(%rip), %rsi
    xorq %rax, %rax
    call scanf
    
    # Ler segundo número
    leaq input_msg2(%rip), %rdi
    xorq %rax, %rax
    call printf
    
    leaq scanf_fmt(%rip), %rdi
    leaq num2(%rip), %rsi
    xorq %rax, %rax
    call scanf
    
    # Carregar números
    movl num1(%rip), %eax
    movl num2(%rip), %ebx
    
    # Tornar positivos
    testl %eax, %eax
    jns positive1
    negl %eax
positive1:
    testl %ebx, %ebx
    jns positive2
    negl %ebx
positive2:
    
    # Algoritmo de Euclides
gcd_loop:
    testl %ebx, %ebx
    jz print_result
    
    movl %ebx, %ecx      # temp = b
    xorl %edx, %edx      # limpar edx
    divl %ebx            # eax = a / b, edx = a % b
    movl %ecx, %eax      # a = temp
    movl %edx, %ebx      # b = resto
    jmp gcd_loop

print_result:
    # Preparar argumentos para printf
    movl %eax, %ecx              # 4º arg: resultado
    movl num2(%rip), %edx        # 3º arg: num2  
    movl num1(%rip), %esi        # 2º arg: num1
    leaq result_msg(%rip), %rdi  # 1º arg: formato
    xorq %rax, %rax
    call printf
    
    # Retornar 0
    xorq %rax, %rax
    addq $32, %rsp
    popq %rbp
    ret

.data
    input_msg1: .asciz "Digite o primeiro numero: "
    input_msg2: .asciz "Digite o segundo numero: "
    result_msg: .asciz "O MDC de %d e %d eh: %d\n"
    scanf_fmt: .asciz "%d"
    num1: .long 0
    num2: .long 0
