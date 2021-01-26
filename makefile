all:	hello5

BLD_DIR := build

hello5:	hello5.o
	ld -m elf_i386 $(BLD_DIR)/$< -o $(BLD_DIR)/$@

%.o:	%.asm
	mkdir -p $(BLD_DIR)
	nasm -f elf -g $< -o $(BLD_DIR)/$@

