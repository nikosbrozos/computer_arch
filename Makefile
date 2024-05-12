final_lab1.dmp: lab1.elf
	riscv64-unknown-elf-elf2hex --bit-width 32 --input lab1.elf --output testshex.txt
	riscv64-unknown-elf-objdump -d lab1.elf>final_lab1.dmp
lab1.elf: lab1.c lscript bootstrap.s
	riscv64-unknown-elf-gcc -O0 -Wall -nostdlib -march=rv32imav -mabi=ilp32 -T lscript bootstrap.s lab1_.s -o lab1.elf
clean:
	rm lab1.elf final_lab1.dmp