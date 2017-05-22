; add eax,4 : eax = eax+4
; add eax,ebx : eax = eax+ebx
; sub eax,2 : eax = eax-2
; add dword [x],400 : x=x+400
; add x,400 - nonsense...
; mul ebx : eax*ebx result goes to edx:eax(pair of registers)
; div ebx : edx:eax / ebx quotient goes to eax remainder goes to edx

; mov eax,ebx ebx goes to eax
; mov eax,[x] moves the contents of x not the address
; mov [x],eax moves to x the contents of the register
; mov eax,0
; mov eax,x moves the address to eax, not the contents

global main
extern printf
extern scanf
section .text
main:
	;scanf("%d",&value);
	push value
	push percentd
	call scanf
	add esp,8
	
	;printf("%d",value);
	push dword [value]
	push msg
	call printf
	add esp,8
	ret
	
section .data
greetz:
	db "Hello",10,0
value:
	dd 42
begin:
	db "Enter a number:",10,0
msg:
	db "The answer is %d",10,0
percentd:
	db "%d",0