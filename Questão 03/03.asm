extern printf

SECTION .data
	numero: DW 1457
	vetor: DW 0, 0, 0, 0
	msg: DB "Vetor de resultado: %d %d %d %d", 10, 0

SECTION .text
	global _main
	_main:

	push rbp

	mov eax, [numero] 
	mov ecx, 1000
	div ecx
	mov DWORD[vetor], eax

	mov eax, edx
	mov ecx, 100
	div ecx
	mov DWORD[vetor + 2], eax

	mov eax, edx
	mov ecx, 10
	div ecx
	mov DWORD[vetor + 4], eax

	mov DWORD[vetor + 6], edx

	mov rdi, msg
	movzx rsi, ax
	mov rax, 0
	call printf
	pop rbp

mov rax, 60
xor rdi, rdi
syscall