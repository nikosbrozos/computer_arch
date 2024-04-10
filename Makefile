final_lab1.dmp: lab1.elf
	riscv64-unknown-elf-objdump -d lab1.elf>final_lab1.dmp
lab1.elf: lab1.c
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 lab1.c -o lab1.elf
clean:
	rm lab1.elf final_lab1.dmp