extern printf

SECTION .data
	multiplicador: DW 5, 10, 15, 20
	resultado: DW 0, 0, 0, 0
	msg: DB "Vetor de resultado: %d %d %d %d", 10, 0


SECTION .text
	global _main
	_main:
	
	push rbp

	mov ax, 0
	mov ax, 8
	mul WORD[multiplicador]

	movzx eax, ax
	mov [resultado], eax

	mov ax, 0
	mov ax, 8
	mul WORD[multiplicador + 2]

	movzx eax, ax
	mov [resultado + 4], eax

	mov ax, 0
	mov ax, 8
	mul WORD[multiplicador + 4]

	movzx eax, ax
	mov [resultado + 8], eax

	mov ax, 0
	mov ax, 8
	mul WORD[multiplicador + 6]

	movzx eax, ax
	mov [resultado + 12], eax

	mov rdi, msg
	movzx rsi, ax
	mov rax, 0
	call printf
	pop rbp
	
mov rax, 60
xor rdi, rdi
syscall