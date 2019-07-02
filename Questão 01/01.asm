extern printf

SECTION .data
	A: DD 20
	B: DD 10
	C: DD 8
	D: DD 7
	msg: DB "Resultado: %d", 10, 0

SECTION .bss
	resp: RESW 1

SECTION .text
	global _main
	_main:

	push rbp

	xor eax, eax
	mov eax, [A]
	add eax, [B]

	xor ebx, ebx
	mov ebx, [C]
	add ebx, [D]

	sub eax, ebx
	mov DWORD [resp], eax

	mov rdi, msg
	movzx rsi, ax
	mov rax, 0
	call printf
	pop rbp

mov rax, 60
xor rdi, rdi
syscall