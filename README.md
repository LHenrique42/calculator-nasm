# Calculator ASM
Calculator made in ASM (Portuguese)

### Install NASM if you don't have (Linux):

```bash
sudo apt install as31 nasm 
```

### Execute:

```bash
nasm -f elf64 calculator.asm # assemble the program  
```

```bash
ld -s -o calculator calculator.o # link the object file nasm produced into an executable file    
```

```bash
./calculator # calculator is an executable file 
```
