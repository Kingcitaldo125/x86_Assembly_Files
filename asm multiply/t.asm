global main
extern printf
extern scanf

section .text
main:
	mov eax,5
	mov ebx,6
	mul ebx
	;add eax,edx
	mov [re],eax
	
	push dword [re]
	push perc 
	call printf
	add esp,8
	mov eax,1
	ret 

section .data
perc:
	db "Here %d",10,0
re:
	dd 1
one:
	dd 5
two:
	dd 6
