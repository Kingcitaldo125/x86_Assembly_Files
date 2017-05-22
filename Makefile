
example.exe : example.asm
	nasm -f win32 --prefix _ -o example.o example.asm
	gcc -m32 -o example.exe example.o