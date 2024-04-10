final_lab1.dmp: lab1.elf
	riscv64-unknown-elf-objdump -d lab1.elf>lab1.dmp
lab1.elf: lab1.c
riscv64-unknown-elf-gcc -O3 -Wall -nostdlib -march=rv32imav -mabi=ilp32 lab1.c function.h fact.s -o lab1.elf
clean:
rm lab1.elf final_lab1.dmp