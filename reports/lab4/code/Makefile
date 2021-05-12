all: lib
lib: shiftArr.o
	riscv64-unknown-elf-ar -rsc libshiftArr.a shiftArr.o
shiftArr.o: shiftArr.c
	riscv64-unknown-elf-gcc -g -c shiftArr.c
main.o: main.c
	riscv64-unknown-elf-gcc -g -c main.c
all:
	riscv64-unknown-elf-gcc main.o libshiftArr.a -o main
