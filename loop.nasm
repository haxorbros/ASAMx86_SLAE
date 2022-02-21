global _start

_start:
	mov ecx, 0x5
	
loop:
	push ecx
	
	mov eax, 0x4
	mov ebx, 0x1	
	mov ecx, message 
	mov edx, mlen
	int 0x80

	pop ecx
	loop loop

	mov eax, 0x1
	mov ebx, 0xa
	int 0x80

section .data
	
	message: db "Hello World!"
	mlen	equ $-message
