;lm.asm
;Multiply the users number by two

global main
extern printf
extern scanf

section .text

main:
	push grt
	call printf
	add esp,4
	
	push msg
	call printf
	add esp,4
	
	push bfre 
	push Pd
	call scanf
	add esp,8
	
	mov eax,[bfre]
	mov ebx,2
	mul ebx
	
	mov [nnuu],eax
	push dword [nnuu]
	push fnl
	call printf
	xor eax,eax
	xor ebx,ebx
	add esp,8
	
section .data
grt:
	db "Enter your number ",10,0
msg:
	db "Your number will be multiplied by Two",10,0
bfre:
	dd 0
Pd:
	db "%d",0
nnuu:
	dd 0
fnl:
	db "Your product is %d",10,0