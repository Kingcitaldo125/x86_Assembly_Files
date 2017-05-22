
lm.exe : lm.asm
	nasm -f win32 --prefix _ -o lm.o lm.asm
	gcc -m32 -o lm.exe lm.o