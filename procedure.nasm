global _start

section .text

HelloWorld:
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, msg
	mov edx, msglen
	int 0x80
	ret

Exit:
	mov eax, 0x1
	mov ebx, 0x0
	int 0x80

_start:
	
	mov ecx, 0x10

PrintHW:
	push ecx
	call HelloWorld
	pop ecx
	loop PrintHW


	call Exit

section .data
	msg: db "hello world!"
	msglen equ $-msg
