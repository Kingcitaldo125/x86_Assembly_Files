t.exe : t.asm
	nasm -f win32 --prefix _ -o t.o t.asm
	gcc -m32 -o t.exe t.o