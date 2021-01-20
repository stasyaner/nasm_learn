all:
	nasm -f elf hello5.asm
	ld -m elf_i386 hello5.o -o hello5
