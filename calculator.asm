; Calculadora em assembly
; Aluno: Luís Henrique Gundes Valim
; Ciência da Computação
; Universidade Federal do Espírito Santo
; Características do trabalho:
; Arquitetura: x64
; Compilador: NASM

; _start
global _start

; secao .data - Constantes - Mensagens
section .data 
    msgInput1 db 'Insira primeiro numero: '
    lenMsgInput1 equ $-msgInput1
    msgInput2 db 'Insira segundo numero: '
    lenMsgInput2 equ $-msgInput2
    displayResult db 'Resultado: '
    lenDisplayResult equ $-displayResult

; secao .bss - Variaveis
section .bss
    input1 resb 10
	input2 resb 10
	result resb 11

; secao .text - Codigo
section .text
    global _start
    _start:
    
    ; Mensagem 1
    mov eax, 4
    mov ebx, 1
    mov ecx, msgInput1
    mov edx, lenMsgInput1
    int 80h

    ; Le e armazena numero 1
    mov eax, 3
    mov ebx, 2
    mov ecx, input1
    mov edx, 10
    int 80h

    ; Mensagem 2
    mov eax, 4
    mov ebx, 1
    mov ecx, msgInput2
    mov edx, lenMsgInput2
    int 80h

    ; Le e armazena numero 1
    mov eax, 3
    mov ebx, 2
    mov ecx, input2
    mov edx, 10
    int 80h

    mov eax, [input1]
	sub eax, '0'
	mov ebx, [input2]
	sub ebx, '0'

    add eax, ebx
    add eax, '0'

    mov [result], eax

    ; Mensagem 2
    mov eax, 4
    mov ebx, 1
    mov ecx, displayResult
    mov edx, lenDisplayResult
    int 80h

    mov eax, 4
	mov ebx, 1
	mov ecx, result
	mov edx, 11
	int 0x80
    
    ; Exit programa
	mov eax, 1
	mov ebx, 0
	int 80h